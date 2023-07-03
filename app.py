import mysql.connector
from pymysql import* 
import xlwt 
import pandas.io.sql as sql
import warnings

warnings.filterwarnings('ignore')

mydb = mysql.connector.connect(host="localhost",
user="root",
password="M4nchester76",
auth_plugin='mysql_native_password',
database="Psyche")
con=connect(user="root",password="M4nchester76",host="localhost",database="Psyche")

mycursor = mydb.cursor()

# Allows the user to create a new user then informs them of their userID
def UserCreation():
    print("Please enter your name: \n")
    name = input()
    print("Please enter your age: \n")
    age = int(input())
    print("Please enter your gender: \n")
    gender = input()
    try:
        mycursor.execute(f"INSERT INTO User (Name, Age, Gender, DeleteFlag) VALUES ('{name}', '{age}', '{gender}', 0)")
        mydb.commit()
    except:
        mydb.rollback()

    mycursor.execute(f"SELECT UserID FROM User WHERE Name = '{name}' AND Age = '{age}' AND Gender = '{gender}';")
    ID = mycursor.fetchone()[0]
    print(f"Your UserID is: {ID}\n")

    return ID

# Checks to see if a user has been deleted or if they exist
def CheckID(ID):
    mycursor.execute(f"SELECT COUNT(*) FROM User WHERE UserID = '{ID}';")
    cnt = mycursor.fetchone()[0]

    if cnt > 0:
        mycursor.execute(f"SELECT DeleteFlag FROM User WHERE UserID = '{ID}';")
        flag = mycursor.fetchone()[0]
        if flag == 0:
            user = "Exists"
        else:
            user = "None"
    else:
        user = "None"

    return user

# Prints a long string displaying the options for the database
def Options():
    print('''
    Select from the following menu options:\n
    1) Take the Big 5 Personality Test\n
    2) Take the Narcissism Inventory Test\n
    3) Switch User\n
    4) Delete User\n
    5) Calculate your Top Personality\n
    6) Information about your Top Personality\n
    7) Pull information about a test of your choice\n
    8) Export your scores to an excel sheet \n
    9) Pull out the average scores for each personality \n
    10) Pull out information about a certain personality \n
    11) Total Top Personality \n
    12) Exit
    ''')
    return getChoice([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])

# Prints the scale for which the Big Five test works on
def BigFiveMenu():
    print("""
    1 - Disagree\n
    2 - Slightly Disagree\n
    3 - Neutral\n 
    4 - Slightly Agree\n 
    5 - Agree\n
    """)
    choice = getChoice([1, 2, 3, 4, 5])
    return choice

# Forces the user to select a choice from a specific list
def getChoice(lst):
    choice = input("Enter choice number: ")
    while choice.isdigit() == False:
        print("Incorrect option. Try again")
        choice = input("Enter choice number: ")

    while int(choice) not in lst:
        print("Incorrect option. Try again")
        choice = input("Enter choice number: ")
    return int(choice)

# Forces the user to select one of A or B
def NarcissistChoice(lst):
    choice = input("Enter A or B: ")

    while choice not in lst:
        print("Incorrect option. Try again")
        choice = input("Enter A or B: ")
    return choice

# Operates a function asking the user the Big Five Questions 
def BigFive(userID):
    print("For each question, you will enter one integer on a 1 to 5 scale.\n")

    i = 1
    for x in range(50):
        Q_ID = "B" + str(i)
        QID = "BQ" + str(i)
        mycursor.execute(f"SELECT Question FROM Questions WHERE QNum = '{Q_ID}';")
        question = mycursor.fetchone()[0]
        print(question)
        choice = BigFiveMenu()
        try:
            mycursor.execute(f"UPDATE User SET {QID} = {choice} WHERE UserID = {userID};")
            mydb.commit()
        except:
            mydb.rollback()
        i += 1

    BigFiveScoring(userID)

# Scores the user for their personalities after taking the test
def BigFiveScoring(userID):
    ExtraPlus = [1, 11, 21, 31, 41]
    ExtraMinus = [6, 16, 26, 36, 46]
    AgreePlus = [7, 17, 27, 37, 42, 47]
    AgreeMinus = [2, 12, 22, 32]
    ConPlus = [3, 13, 23, 33, 43, 48]
    ConMinus = [8, 18, 28, 38]
    NeurPlus = [9, 19]
    NeurMinus = [4, 14, 24, 29, 34, 39, 44, 49]
    OpenPlus = [5, 15, 25, 35, 40, 45, 50]
    OpenMinus = [10, 20, 30]
    E = 20
    A = 14 
    C = 14
    N = 38
    O = 8
    i = 1
    for x in range(50):
        QID = "BQ" + str(i)
        mycursor.execute(f"SELECT {QID} FROM User WHERE UserID = {userID};")
        question = mycursor.fetchone()[0]
        if i in ExtraPlus:
            E += question
        elif i in ExtraMinus:
            E -= question 
        elif i in AgreePlus:
            A += question 
        elif i in AgreeMinus:
            A -= question 
        elif i in ConPlus:
            C += question 
        elif i in ConMinus:
            C -= question
        elif i in NeurPlus:
            N += question 
        elif i in NeurMinus:
            N -= question 
        elif i in OpenPlus:
            O += question
        elif i in OpenMinus:
            O -= question
        i += 1
    try:
        mycursor.execute(f"""
        UPDATE User 
        SET Extroversion = {E}, 
            Agreeableness = {A},
            Conscientiousness = {C},
            Neuroticism = {N},
            Openness = {O}
        WHERE UserID = {userID};
        """)
        mydb.commit()
    except:
        mydb.rollback()

# Operates the NPI test, asking the user the many questions
def Narcissist(userID):
    print("For each question, you will enter either A or B in response to the question.\n")

    i = 1
    for x in range(40):
        Q_ID = "N" + str(i)
        QID = "NQ" + str(i)
        mycursor.execute(f"SELECT Question FROM Questions WHERE QNum = '{Q_ID}';")
        question = mycursor.fetchone()[0]
        print(question)
        choice = NarcissistChoice(["A", "B", "a", "b"])
        try:
            mycursor.execute(f"UPDATE User SET {QID} = '{choice}' WHERE UserID = {userID};")
            mydb.commit()
        except:
            mydb.rollback()
        i += 1
    NarcissistScoring(userID)

# Scores the user after they finish the NPI
def NarcissistScoring(userID):
    AList = [1, 2, 3, 6, 8, 11, 12, 13, 14, 16, 21, 24, 25, 27, 29, 30, 31, 33, 34, 36, 37, 38, 39]
    i = 1
    score = 0
    for x in range(40):
        QID = "NQ" + str(i)
        mycursor.execute(f"SELECT {QID} FROM User WHERE UserID = {userID};")
        question = mycursor.fetchone()[0]
        
        if i in AList:
            if question == 'A' or question == 'a':
                score += 1
        else:
            if question == 'B' or question == 'b':
                score += 1
        i += 1
    try:
        mycursor.execute(f'UPDATE User SET Narcissism = {score} WHERE UserID = {userID};')
        mydb.commit()
    except:
        mydb.rollback()

# Deletes a chosen user
def DeleteUser():
    print("Please enter the ID of the user you wish to delete: \n")
    userID = int(input())
    while (CheckID(userID) == "None"):
        print("User doesn't exist, try again: \n")
        userID = int(input())
    try:
        mycursor.execute(f'''
        UPDATE User SET DeleteFlag = 1 WHERE UserID = {userID};
        ''')
        mydb.commit()
    except:
        mydb.rollback()

# Calculates a users primary personality
def PrimaryPersonality(userID):
    mycursor.execute(f'''
    SELECT Narcissism, Extroversion, Agreeableness, Conscientiousness, Openness, Neuroticism
    FROM User 
    WHERE UserID = {userID};
    ''')
    queryresults = mycursor.fetchone()
    N = queryresults[0]
    E = queryresults[1]
    A = queryresults[2]
    C = queryresults[3]
    O = queryresults[4]
    Neur = queryresults[5]
    personalities = {N : "Narcissism", E : "Extroversion", A : "Agreeableness", C : "Conscientiousness", O : "Openness", Neur : "Neuroticism"}
    pers = [N, E, A, C, O, Neur]
    for x in pers:
        if x is None:
            pers.remove(x)
    TopPers = max(pers)
    try:
        query = f'''
        UPDATE User
        SET PersonalityID = (SELECT PersonalityID FROM Personality WHERE Name = '{personalities.get(TopPers)}')
        WHERE UserID = {userID};
        '''
        mycursor.execute(query)
        mydb.commit()
    except:
        mydb.rollback()

    print(personalities.get(TopPers))
# Outputs information based on a user's primary personality
def TopPersInfo(userID):
    mycursor.execute(f'''
    SELECT PersonalityID FROM User WHERE UserID = {userID};
    ''')
    persID = mycursor.fetchone()[0]
    print(persID)
    query = f'''
    SELECT Name
    FROM Personality
    WHERE PersonalityID = {persID};
    '''    
    mycursor.execute(query)
    name = mycursor.fetchone()[0]
    print(name)
    query = f'''
    SELECT s.HighScoreInfo, s.LowScoreInfo, u.{name}
    FROM User u
    INNER JOIN Personality p ON u.PersonalityID = p.PersonalityID
    INNER JOIN ScoreInfo s ON p.PersonalityID = s.PersonalityID
    WHERE u.UserID = {userID};
    '''

    mycursor.execute(query)
    queryresults = mycursor.fetchone()
    highscore = queryresults[0]
    lowscore = queryresults[1]
    score = queryresults[2]
    mycursor.execute(f'''
    SELECT AVG({name}) FROM User;
    ''')
    Avg = mycursor.fetchone()[0]
    
    print(score)

    if score < Avg:
        print(f'Your {name} score of {score} was lower than the average database score: {Avg}\n')
        print(lowscore + '\n')
    else:
        print(f'Your {name} score of {score} was higher than the average database score: {Avg}\n')
        print(highscore + '\n')

# Outputs different information for a chosen personality test
def TestInformation():
    print("""
    Please choose which test you would like information about: \n
    1 - Narcissistic Personality Inventory\n
    2 - The Big Five Personality Test\n
    """)
    choice = getChoice([1, 2])
    mycursor.execute(f'''
    SELECT TestHistory, Creators, TestUse
    FROM TestInfo
    WHERE TestID = {choice};
    ''')
    queryresults = mycursor.fetchone()
    history = queryresults[0]
    print("Test History: \n")
    print(history)
    creators = queryresults[1]
    print("Test Creators: \n")
    print(creators)
    usage = queryresults[2]
    print("Test Usage: \n")
    print(usage)

# Exports a user's test scores to an excel sheet
def ExportScores(userID):
    df = sql.read_sql(f'SELECT Name, Narcissism, Extroversion, Agreeableness, Openness, Conscientiousness, Neuroticism FROM User WHERE UserID = {userID};', con)
    mycursor.execute(f'SELECT Name FROM User WHERE UserID = {userID};')
    name = mycursor.fetchone()[0]
    file_name = name + "_results.xls"
    df.to_excel(file_name)

# Finds the average for each personality score in the database
def AverageScores():
    mycursor.execute('''
    SELECT AVG(Narcissism), AVG(Extroversion), AVG(Agreeableness), AVG(Conscientiousness), AVG(Openness), AVG(Neuroticism)
    FROM User
    WHERE DeleteFlag = 0;
    ''')
    queryresults = mycursor.fetchone()
    print(f"The average Narcissism score is: {queryresults[0]} \n")
    print(f"The average Extroversion score is: {queryresults[1]} \n")
    print(f"The average Agreeableness score is: {queryresults[2]} \n")
    print(f"The average Openness score is: {queryresults[3]} \n")
    print(f"The average Conscientiousness score is: {queryresults[4]} \n")
    print(f"The average Neuroticism score is: {queryresults[5]} \n")

# Returns information for a chosen personality
def PersonalityInfo():
    print("Which personality would you like to pull information for?")
    print('''
    1 - Narcissism\n
    2 - Extroversion\n
    3 - Agreeableness\n
    4 - Conscientiousness\n
    5 - Openness\n
    6 - Neuroticism\n
    ''')
    choice = getChoice([1, 2, 3, 4, 5, 6])
    match choice:
        case 1:
            mycursor.execute("SELECT * FROM NarcissistInfo;")
        case 2:
            mycursor.execute("SELECT * FROM ExtroversionInfo;")
        case 3:
            mycursor.execute("SELECT * FROM AgreeablenessInfo;")
        case 4:
            mycursor.execute("SELECT * FROM OpennessInfo;")
        case 5:
            mycursor.execute("SELECT * FROM ConscientiousnessInfo;")
        case 6:
            mycursor.execute("SELECT * FROM NeuroticismInfo;")
    results = mycursor.fetchone()
    name = results[0]
    symptoms = results[1]
    solution = results[2]
    misc = results[3]
    high = results[4]
    low = results[5]
    print(f"Name: {name}\n")
    print(f"Symptoms: {symptoms}\n")
    print(f"Solution: {solution}\n")
    print(f"Miscellaneous: {misc}\n")
    print(f"High Scores: {high}\n")
    print(f"Low Scores: {low}\n")

# Finds the total top personality for the entire database
def TotalTop():
    mycursor.execute('''
    SELECT AVG(Narcissism), AVG(Extroversion), AVG(Agreeableness), AVG(Conscientiousness), AVG(Openness), AVG(Neuroticism)
    FROM User
    WHERE DeleteFlag = 0;
    ''')
    queryresults = mycursor.fetchone()
    N = queryresults[0]
    E = queryresults[1]
    A = queryresults[2]
    C = queryresults[3]
    O = queryresults[4]
    Neur = queryresults[5]
    personalities = {N : "Narcissism", E : "Extroversion", A : "Agreeableness", C : "Conscientiousness", O : "Openness", Neur : "Neuroticism"}
    pers = [N, E, A, C, O, Neur]
    for x in pers:
        if x is None:
            pers.remove(x)
    TopPers = max(pers)

    mycursor.execute(f'''
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo, t.TestHistory
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    INNER JOIN TestInfo t ON t.TestID = s.TestID
    WHERE p.PersonalityID = (SELECT PersonalityID FROM Personality WHERE Name = '{personalities.get(TopPers)}');
    ''')
    print("The databases Top Primary Personality: \n")

    results = mycursor.fetchone()
    name = results[0]
    symptoms = results[1]
    solution = results[2]
    misc = results[3]
    high = results[4]
    low = results[5]
    history = results[6]
    print(f"Name: {name}\n")
    print(f"Average Score: {TopPers}\n")
    print(f"Symptoms: {symptoms}\n")
    print(f"Solution: {solution}\n")
    print(f"Miscellaneous: {misc}\n")
    print(f"High Scores: {high}\n")
    print(f"Low Scores: {low}\n")
    print(f"Originating Test History: {history}\n")

# main
# Asks about user status, then runs the loop that allows the user to choose different options
print("Are you a returning user or would you like to create an account?\n")
print("""
1 - Returning User\n
2 - New User\n
""")
choice = getChoice([1, 2])
if choice == 1:
    while(True):
        print("Please enter your UserID \n")
        userID = input()
        if CheckID(userID) == "None":
            print("ID doesn't exist, try again \n")
            continue
        else:
            break
else:
    userID = UserCreation()

while True:
    match Options():
        case 1:
            BigFive(userID)
        case 2:
            Narcissist(userID)
        case 3:
            print("Are you a returning user or would you like to create an account?\n")
            print("""
            1 - Returning User\n
            2 - New User\n
            """)
            choice = getChoice([1, 2])
            if choice == 1:
                while(True):
                    print("Please enter your UserID \n")
                    userID = input()
                    if CheckID(userID) == "None":
                        print("ID doesn't exist, try again \n")
                        continue
                    else:
                        break
            else:
                userID = UserCreation()
        case 4:
            DeleteUser()
        case 5:
            PrimaryPersonality(userID)
        case 6:
            TopPersInfo(userID)
        case 7:
            TestInformation()
        case 8: 
            ExportScores(userID)
        case 9:
            AverageScores()
        case 10:
            PersonalityInfo()
        case 11:
            TotalTop()
        case 12:
            print("Goodbye!")
            break

mydb.close()
# %%
