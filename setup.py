# setup.py
# The setup.py file contains all the table 
# creation for the Psyche Evaluation program
# also creates the View objects for each personality
# Author: Joseph Ellis
# Email: joellis@chapman.edu
# Course: CPSC 408
# Assignment: Final Project

import mysql.connector
mydb = mysql.connector.connect(host="localhost",
user="root",
password="M4nchester76",
auth_plugin='mysql_native_password',
database="Psyche")


mycursor = mydb.cursor()
mycursor.execute("CREATE SCHEMA Psyche;")

# Following code creates each table:
try:
    mycursor.execute("""CREATE TABLE User (
        UserID INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
        PersonalityID INTEGER,
        Name VARCHAR(50),
        Age INTEGER,
        Gender VARCHAR(50),
        NQ1 VARCHAR(5),
        NQ2 VARCHAR(5),
        NQ3 VARCHAR(5),
        NQ4 VARCHAR(5),
        NQ5 VARCHAR(5),
        NQ6 VARCHAR(5),
        NQ7 VARCHAR(5),
        NQ8 VARCHAR(5),
        NQ9 VARCHAR(5),
        NQ10 VARCHAR(5),
        NQ11 VARCHAR(5),
        NQ12 VARCHAR(5),
        NQ13 VARCHAR(5),
        NQ14 VARCHAR(5),
        NQ15 VARCHAR(5),
        NQ16 VARCHAR(5),
        NQ17 VARCHAR(5),
        NQ18 VARCHAR(5),
        NQ19 VARCHAR(5),
        NQ20 VARCHAR(5),
        NQ21 VARCHAR(5),
        NQ22 VARCHAR(5),
        NQ23 VARCHAR(5),
        NQ24 VARCHAR(5),
        NQ25 VARCHAR(5),
        NQ26 VARCHAR(5),
        NQ27 VARCHAR(5),
        NQ28 VARCHAR(5),
        NQ29 VARCHAR(5),
        NQ30 VARCHAR(5),
        NQ31 VARCHAR(5),
        NQ32 VARCHAR(5),
        NQ33 VARCHAR(5),
        NQ34 VARCHAR(5),
        NQ35 VARCHAR(5),
        NQ36 VARCHAR(5),
        NQ37 VARCHAR(5),
        NQ38 VARCHAR(5),
        NQ39 VARCHAR(5),
        NQ40 VARCHAR(5),
        BQ1 INTEGER,
        BQ2 INTEGER,
        BQ3 INTEGER,
        BQ4 INTEGER,
        BQ5 INTEGER,
        BQ6 INTEGER,
        BQ7 INTEGER,
        BQ8 INTEGER,
        BQ9 INTEGER,
        BQ10 INTEGER,
        BQ11 INTEGER,
        BQ12 INTEGER,
        BQ13 INTEGER,
        BQ14 INTEGER,
        BQ15 INTEGER,
        BQ16 INTEGER,
        BQ17 INTEGER,
        BQ18 INTEGER,
        BQ19 INTEGER,
        BQ20 INTEGER,
        BQ21 INTEGER,
        BQ22 INTEGER,
        BQ23 INTEGER,
        BQ24 INTEGER,
        BQ25 INTEGER,
        BQ26 INTEGER,
        BQ27 INTEGER,
        BQ28 INTEGER,
        BQ29 INTEGER,
        BQ30 INTEGER,
        BQ31 INTEGER,
        BQ32 INTEGER,
        BQ33 INTEGER,
        BQ34 INTEGER,
        BQ35 INTEGER,
        BQ36 INTEGER,
        BQ37 INTEGER,
        BQ38 INTEGER,
        BQ39 INTEGER,
        BQ40 INTEGER,
        BQ41 INTEGER,
        BQ42 INTEGER,
        BQ43 INTEGER,
        BQ44 INTEGER,
        BQ45 INTEGER,
        BQ46 INTEGER,
        BQ47 INTEGER,
        BQ48 INTEGER,
        BQ49 INTEGER,
        BQ50 INTEGER,
        Narcissism INTEGER, 
        Extroversion INTEGER,
        Agreeableness INTEGER,
        Conscientousness INTEGER,
        Neuroticism INTEGER,
        Openness INTEGER
        DeleteFlag INTEGER
        );
        """)
    mydb.commit()
except:
    mydb.rollback()
try:
    mycursor.execute("""CREATE TABLE Personality (
        PersonalityID INTEGER NOT NULL PRIMARY KEY,
        TestID INTEGER NOT NULL,
        Name VARCHAR(50),
        Symptoms VARCHAR(200),
        Solution VARCHAR(200),
        Miscellaneous VARCHAR(200)
    );
    """)
    mydb.commit()
except:
    mydb.rollback()

try:
    mycursor.execute("""CREATE TABLE NarcissistScoreInfo (
        TestID INTEGER NOT NULL PRIMARY KEY,
        HighScoreInfo VARCHAR(800),
        LowScoreInfo VARCHAR(800)
        );
    """)
    mydb.commit()
except:
    mydb.rollback()

try:
    mycursor.execute("""CREATE TABLE Questions (
        TestID INTEGER NOT NULL PRIMARY KEY,
        QNum VARCHAR(5),
        Question VARCHAR(500)
    );
    """)
    mydb.commit()
except:
    mydb.rollback()
try:
    mycursor.execute("""CREATE TABLE TestInfo (
        TestID INTEGER NOT NULL PRIMARY KEY,
        TestHistory VARCHAR(700),
        Creators VARCHAR(100),
        TestUsage VARCHAR(700)
    );
    """)
    mydb.commit()
except:
    mydb.rollback()

# Following code populates relevant tables:
try:
    sql = "INSERT INTO Personality (PersonalityID, TestID, Name, Symptoms, Solution, Miscellaneous) VALUES (%s, %s, %s, %s, %s, %s)"
    vals = [
        (1, 1, "Narcissism", 
        """
        - Have an unreasonably high sense of self-importance and require constant, excessive admiration.
        - Expect to be recognized as superior even without achievements.
        - Make achievements and talents seem bigger than they are.
        - Be preoccupied with fantasies about success, power, brilliance, beauty or the perfect mate.
        - Believe they are superior to others and can only spend time with or be understood by equally special people.
        - Be critical of and look down on people they feel are not important.
        - Have an inability or unwillingness to recognize the needs and feelings of others.
        - Insist on having the best of everything — for instance, the best car or office.
        """, 
        """
        Because the cause of narcissistic personality disorder is unknown, there's no known way to prevent the condition. But it may help to:

        - Get treatment as soon as possible for childhood mental health problems.
        - Participate in family therapy to learn healthy ways to communicate or to cope with conflicts or emotional distress.
        - Attend parenting classes and seek guidance from a therapist or social worker if needed.
        """,
        """
            Although the cause of narcissistic personality disorder isn't known, 
        some researchers think that overprotective or neglectful parenting may 
        have an impact on children who are born with a tendency to develop the disorder. 
        Genetics and other factors also may play a role in the development of narcissistic personality disorder.
        """),
        (2, 2, "Extroversion",
        """
        High scorers:
        - Sociable
        - Energized by social interaction
        - Excitement-seeking
        - Enjoys being the center of attention
        - Outgoing
        Low scorers:
        - Prefers solitude
        - Fatigued by too much social interaction
        - Reflective
        - Dislikes being the center of attention
        - Reserved
        """,
        """
            One would not normally describe extraversion as a negative quality. 
        People respond differently to various forms of activities. If being
        alone helps you relax and heal, then that's okay. Pushing too often
        to be the center of attention COULD be negative, so it could be healthy
        to keep impulses like that in control.
        """,
        """
            Extraversion reflects the tendency and intensity to which someone seeks interaction with their environment, particularly socially. 
        It encompasses the comfort and assertiveness levels of people in social situations.
        Additionally, it also reflects the sources from which someone draws energy.
        """
        ),
        (3, 2, "Aggreeableness",
        """
        High scorers:
        - Trust (forgiving)
        - Straightforwardness
        - Altruism (enjoys helping)
        - Compliance
        - Modesty
        - Sympathetic
        - Empathy
        Low scorers:
        - Sceptical
        - Demanding
        - Insults and belittles others
        - Stubborn
        - Show-off
        - Unsympathetic
        - Doesn't care about how other people feel
        """,
        """
            Agreeableness is a commendable attribute, with high scores indicating
        that someone is a very pure person. While this is most often a positive
        value, people can take advantage of trusting people. It's important to 
        take time to assess situations before you run in believing everything 
        people say. 
        """,
        """
            Agreeableness refers to how people tend to treat relationships with others. 
        Unlike extraversion which consists of the pursuit of relationships, 
        agreeableness focuses on people's orientation and interactions with others.
        """
        ),
        (4, 2, "Conscientousness",
        """
        High scorers:
        - Competence
        - Organized
        - Dutifulness
        - Achievement striving
        - Self-disciplined
        - Deliberation
        Low scorers:
        - Incompetent
        - Disorganized
        - Careless
        - Procrastinates
        - Indiscipline
        - Impulsive
        """,
        """
            Striving for achievements and self-discipline are important traits to have, 
        but shine a clear path towards perfectionism. It is just as valuable to remember 
        that you do not need to be perfect and that it is okay to cut yourself some slack.
        """,
        """
            Conscientiousness describes a person's ability to regulate their impulse 
        control in order to engage in goal-directed behaviors. It measures elements 
        such as control, inhibition, and persistency of behavior.
        """
        ),
        (5, 2, "Openness",
        """
        High scorers:
        - Curious
        - Imaginative
        - Creative
        - Open to trying new things
        - Unconventional
        Low scorers:
        - Predictable
        - Not very imaginative
        - Dislikes change
        - Prefer routine
        - Traditional
        """,
        """
            Being open to new experiences is extremely admirable along with being a trait
        that many people have trouble with. However, too much curiosity has the chance of 
        leading you into dangerous situations. Weigh the pros and cons of activities before
        jumping headfirst into something.
        """,
        """
            Openness to experience refers to one's willingness to try new things as well 
        as engage in imaginative and intellectual activities. It includes the ability to 
        “think outside of the box.”
        """
        ),
        (6, 2, "Neuroticism",
        """
        High scorers:
        - Anxious
        - Angry hostility (irritable)
        - Experiences a lot of stress
        - Self-consciousness (shy)
        - Vulnerability
        - Experiences dramatic shifts in mood
        Low scorers:
        - Doesn't worry much
        - Calm
        - Emotionally stable
        - Confident
        - Resilient
        - Rarely feels sad or depressed
        """,
        """
            Neuroticism is the second personality besides narcissism to have negative 
        intonations when high scores are received. Anxiety is something all people 
        struggle with throughout their lives. It is important to seek therapy when 
        it gets to be too difficult to manage. You are not alone in dealing with this
        issue, it is important to remember that.
        """,
        """
            Neuroticism describes the overall emotional stability of an 
        individual through how they perceive the world. It takes into 
        account how likely a person is to interpret events as threatening or difficult.
        """
        )
    ]
    mycursor.executemany(sql, vals)
    mydb.commit()
except:
    mydb.rollback()

try:
    sql = "INSERT INTO scoreinfo (PersonalityID, TestID, HighScoreInfo, LowScoreInfo) VALUES (%s, %s, %s, %s)"
    vals = [
        (1, 1, 
        """
            Attaining a score above the 20 threshold usually implies that you contain qualities 
        associated with a more high-functioning narcissism. Beyond that, going above 30 is much
        more concerning. Located in this test are certain questions that do not necessarily 
        target negative narcissism, however past 30 you are most certainly answering in 
        such a way that might imply you need to rethink certain behavioral choices. 
        """,
        """
        A score below the threshold of around 20 is usually interpreted to be below the level 
        considered to be narcissism. While one would consider narcissism to always be a
        negative trait, you could also say that a healthy amount of it is good for you. Having
        self-confidence and a high self-esteem are important things to keep in mind in life. 
        The danger is having too much such that it develops into putting people down to gain 
        those things. 
        """)
        (2, 2,
        """
            Those high on extraversion are generally assertive, sociable, fun-loving, and outgoing. 
            They thrive in social situations and feel comfortable voicing their opinions. 
            They tend to gain energy and become excited from being around others.
        """,
        """
            Those who score low in extraversion are often referred to as introverts. 
            hese people tend to be more reserved and quieter. 
            TThey prefer listening to others rather than needing to be heard.

            Introverts often need periods of solitude in order to regain energy as 
            attending social events can be very tiring for them. Of importance to 
            note is that introverts do not necessarily dislike social events, but 
            instead find them tiring.
        """),
        (3, 2, 
        """
            Those high in agreeableness can be described as soft-hearted, trusting, 
            and well-liked. They are sensitive to the needs of others and are helpful 
            and cooperative. People regard them as trustworthy and altruistic.
        """,
        """
            Those low in agreeableness may be perceived as suspicious, manipulative, 
            and uncooperative. They may be antagonistic when interacting with others, 
            making them less likely to be well-liked and trusted.
        """),
        (4, 2, 
        """
            Those who score high on conscientiousness can be described as organized, 
            disciplined, detail-oriented, thoughtful, and careful. They also have 
            good impulse control, which allows them to complete tasks and achieve goals.
        """,
        """
            Those who score low on conscientiousness may struggle with impulse control, 
            leading to difficulty in completing tasks and fulfilling goals.
            They tend to be more disorganized and may dislike too much structure. 
            They may also engage in more impulsive and careless behavior.
        """),
        (5, 2, 
        """
            Those who score high on openness to experience are perceived as creative and 
            artistic. They prefer variety and value independence. They are curious about their 
            surroundings and enjoy traveling and learning new things.
        """,
        """
            People who score low on openness to experience prefer routine. They are uncomfortable 
            with change and trying new things so they prefer the familiar over the unknown. As 
            they are practical people, they often find it difficult to think creatively or abstractly.
        """),
        (6, 2, 
        """
            Those who score high on neuroticism often feel anxious, insecure and self-pitying. 
            They are often perceived as moody and irritable. They are prone to excessive sadness 
            and low self-esteem.
        """,
        """
            Those who score low on neuroticism are more likely to calm, secure and self-satisfied. 
            They are less likely to be perceived as anxious or moody. They are more likely to have 
            high self-esteem and remain resilient.
        """)
    ]
    mycursor.executemany(sql, vals)
    mydb.commit()
except:
    mydb.rollback()

try:
    sql = "INSERT INTO testinfo (TestID, TestHistory, Creators, TestUse) VALUES (%s, %s, %s, %s)"
    vals = [
        (1, 
        """
        Narcissism in personality trait generally conceived of as excessive self love. In Greek mythology 
        Narcissus was a man who fell in love with his reflection in a pool of water. The NPI was developed 
        by Raskin and Hall (1979) for the measurement of narcissism as a personality trait in social psychological 
        research. It is based on the definition of narcissistic personality disorder found in the DSM-III, but is 
        not a diagnostic tool for NPD and instead measures subclinical or normal expressions of narcissism. So, even 
        someone who gets the highest possible score on the NPI does not necessarily have NPD.
        """,
        "Raskin and Hall, 1979",
        """
        The NPI is used in many organizations as a part of the hiring process. It is primarily used in areas where 
        high self-serving tendencies, positively correlated to narcissism, may be a very negative aspect in the job. 
        The NPI can not be used solely as a means of rejection, but it can be used to expect certain behaviors on the job. 
        Some organizations pursue narcissism in the individual as a good trait, especially for leadership positions or in a 
        group where creativity is considered a good measure. The NPI is also considered to be a good test of the dark 
        triad traits, the other two traits being machiavellianism and psychopathy.
        """),
        (2, 
        """
        The Big 5's origins developed from the massive lexical research program by Allport and Odbert. Their descriptive 
        "theory" was that human beings notice individual personality differences. Since humans notice these differences 
        they would coin a word for those traits. Then, Goldberg recommended assessing personality with short phrases 
        rather than individual trait words. This became the format of items for the Big 5 questionnaire, employing 
        short phrases or sentences to assess an individual's personality. 
        """,
        """
        Originally developed in 1949, the big 5 personality traits is a theory established by D. W. Fiske and later 
        expanded upon by other researchers including Norman (1967), Smith (1967), Goldberg (1981), and McCrae & Costa (1987).
        """,
        """
        Every type of organization, big and small, leverages the Big 5 to help them understand their students, 
        colleagues, and employees better. A lot of companies use this test for hiring decisions or for allocation 
        of different workers to different types of tasks. It simplifies and informs the selection process and any forthcoming interview.
        The test gives recruiters a more holistic overview of the entire candidate hiring pool.
        """),
    ]
    mycursor.executemany(sql, vals)
    mydb.commit()
except:
    mydb.rollback()

try:
    sql = "INSERT INTO questions (TestID, QNum, Question) VALUES (%s, %s, %s)"
    vals = [ 
        (1, "N1", 
        """
        - A. I have a natural talent for influencing people.
        - B. I am not good at influencing people.
        """),
        (1, "N2", 
        """
        - A. Modesty doesn't become me.
        - B. I am essentially a modest person.
        """),
        (1, "N3", 
        """
        - A. I would do almost anything on a dare.
        - B. I tend to be a fairly cautious person.
        """),
        (1, "N4", 
        """
        - A. When people compliment me I sometimes get embarrassed.
        - B. I know that I am good because everybody keeps telling me so.
        """),
        (1, "N5", 
        """
        - A. The thought of ruling the world frightens the hell out of me.
        - B. If I ruled the world it would be a better place.
        """),
        (1, "N6", 
        """
        - A. I can usually talk my way out of anything.
        - B. I try to accept the consequences of my behavior.
        """),
        (1, "N7", 
        """
        - A. I prefer to blend in with the crowd.
        - B. I like to be the center of attention.
        """),
        (1, "N8", 
        """
        - A. I will be a success.
        - B. I am not too concerned about success.
        """),
        (1, "N9", 
        """
        - A. I am no better or worse than most people.
        - B. I think I am a special person.
        """),
        (1, "N10", 
        """
        - A. I am not sure if I would make a good leader.
        - B. I see myself as a good leader.
        """),
        (1, "N11", 
        """
        - A. I am assertive.
        - B. I wish I were more assertive.
        """),
        (1, "N12", 
        """
        - A. I like to have authority over other people.
        - B. I don't mind following orders.
        """),
        (1, "N13", 
        """
        - A. I find it easy to manipulate people.
        - B. I don't like it when I find myself manipulating people.
        """),
        (1, "N14", 
        """
        - A. I insist upon getting the respect that is due me.
        - B. I usually get the respect that I deserve.
        """),
        (1, "N15", 
        """
        - A. I don't particularly like to show off my body.
        - B. I like to show off my body.
        """),
        (1, "N16", 
        """
        - A. I can read people like a book.
        - B. People are sometimes hard to understand.
        """),
        (1, "N17", 
        """
        - A. If I feel competent I am willing to take responsibility for making decisions.
        - B. I like to take responsibility for making decisions.
        """),
        (1, "N18", 
        """
        - A. I just want to be reasonably happy.
        - B. I want to amount to something in the eyes of the world.
        """),
        (1, "N19", 
        """
        - A. My body is nothing special.
        - B. I like to look at my body.
        """),
        (1, "N20", 
        """
        - A. I try not to be a show off.
        - B. I will usually show off if I get the chance.
        """),
        (1, "N21", 
        """
        - A. I always know what I am doing.
        - B. Sometimes I am not sure of what I am doing.
        """),
        (1, "N22", 
        """
        - A. I sometimes depend on people to get things done.
        - B. I rarely depend on anyone else to get things done.
        """),
        (1, "N23", 
        """
        - A. Sometimes I tell good stories.
        - B. Everybody likes to hear my stories.
        """),
        (1, "N24", 
        """
        - A. Sometimes I tell good stories.
        - B. Everybody likes to hear my stories.
        """),
        (1, "N25", 
        """
        - A. I will never be satisfied until I get all that I deserve.
        - B. I take my satisfactions as they come.
        """),
        (1, "N26", 
        """
        - A. Compliments embarrass me.
        - B. I like to be complimented.
        """),
        (1, "N27", 
        """
        - A. I have a strong will to power.
        - B. Power for its own sake doesn't interest me.
        """),
        (1, "N28", 
        """
        - A. I don't care about new fads and fashions.
        - B. I like to start new fads and fashions.
        """),
        (1, "N29", 
        """
        - A. I like to look at myself in the mirror.
        - B. I am not particularly interested in looking at myself in the mirror.
        """),
        (1, "N30", 
        """
        - A. I really like to be the center of attention.
        - B. It makes me uncomfortable to be the center of attention.
        """),
        (1, "N31", 
        """
        - A. I can live my life in any way I want to.
        - B. People can't always live their lives in terms of what they want.
        """),
        (1, "N32", 
        """
        - A. Being an authority doesn't mean that much to me.
        - B. People always seem to recognize my authority.
        """),
        (1, "N33", 
        """
        - A. I would prefer to be a leader.
        - B. It makes little difference to me whether I am a leader or not.
        """),
        (1, "N34", 
        """
        - A. I am going to be a great person.
        - B. I hope I am going to be successful.
        """),
        (1, "N35", 
        """
        - A. People sometimes believe what I tell them.
        - B. I can make anybody believe anything I want them to.
        """),
        (1, "N36", 
        """
        - A. I am a born leader.
        - B. Leadership is a quality that takes a long time to develop.
        """),
        (1, "N37", 
        """
        - A. I wish somebody would someday write my biography.
        - B. I don't like people to pry into my life for any reason.
        """),
        (1, "N38", 
        """
        - A. I get upset when people don't notice how I look when I go out in public.
        - B. I don't mind blending into the crowd when I go out in public.
        """),
        (1, "N39", 
        """
        - A. I am more capable than other people.
        - B. There is a lot that I can learn from other people.
        """),
        (1, "N40", 
        """
        - A. I am much like everybody else.
        - B. I am an extraordinary person.
        """),
        (2, "B1",
        """
        Am the life of the party. 
        """),
        (2, "B2",
        """
        Feel little concern for others 
        """),
        (2, "B3",
        """
        Am always prepared 
        """),
        (2, "B4",
        """
        Get stressed out easily 
        """),
        (2, "B5",
        """
        Have a rich vocabulary 
        """),
        (2, "B6",
        """
        Don't talk a lot
        """),
        (2, "B7",
        """
        Am interested in people
        """),
        (2, "B8",
        """
        Leave my belongings around
        """),
        (2, "B9",
        """
        Am relaxed most of the time
        """),
        (2, "B10",
        """
        Have difficulty understanding abstract ideas
        """),
        (2, "B11",
        """
        Feel comfortable around people 
        """),
        (2, "B12",
        """
        Insult people
        """),
        (2, "B13",
        """
        Pay attention to details
        """),
        (2, "B14",
        """
        Worry about things 
        """),
        (2, "B15",
        """
        Have a vivid imagination
        """),
        (2, "B16",
        """
        Keep in the background
        """),
        (2, "B17",
        """
        Sympathize with others' feelings
        """),
        (2, "B18",
        """
        Make a mess of things
        """),
        (2, "B19",
        """
        Seldom feel blue
        """),
        (2, "B20",
        """
        Am not interested in abstract ideas
        """),
        (2, "B21",
        """
        Start conversations 
        """),
        (2, "B22",
        """
        Am not interested in other people's problems
        """),
        (2, "B23",
        """
        Get chores done right away
        """),
        (2, "B24",
        """
        Am easily disturbed 
        """),
        (2, "B25",
        """
        Have excellent ideas
        """),
        (2, "B26",
        """
        Have little to say
        """),
        (2, "B27",
        """
        Have a soft heart
        """),
        (2, "B28",
        """
        Often forget to put things back in their proper place
        """),
        (2, "B29",
        """
        Get upset easily
        """),
        (2, "B30",
        """
        Do not have a good imagination
        """),
        (2, "B31",
        """
        Talk to a lot of different people at parties
        """),
        (2, "B32",
        """
        Am not really interested in others
        """),
        (2, "B33",
        """
        Like order
        """),
        (2, "B34",
        """
        Change my mood a lot 
        """),
        (2, "B35",
        """
        Am quick to understand things
        """),
        (2, "B36",
        """
        Don't like to draw attention to myself
        """),
        (2, "B37",
        """
        Take time out for others
        """),
        (2, "B38",
        """
        Shirk my duties
        """),
        (2, "B39",
        """
        Have frequent mood swings
        """),
        (2, "B40",
        """
        Use difficult words
        """),
        (2, "B41",
        """
        Don't mind being the center of attention
        """),
        (2, "B42",
        """
        Feel others' emotions
        """),
        (2, "B43",
        """
        Follow a schedule
        """),
        (2, "B44",
        """
        Get irritated easily 
        """),
        (2, "B45",
        """
        Spend time reflecting on things
        """),
        (2, "B46",
        """
        Am quiet around strangers
        """),
        (2, "B47",
        """
        Make people feel at ease
        """),
        (2, "B48",
        """
        Am exacting in my work
        """),
        (2, "B49",
        """
        Often feel blue
        """),
        (2, "B50",
        """
        Am full of ideas
        """)
    ]
    mycursor.executemany(sql, vals)
    mydb.commit()
except:
    mydb.rollback()

# Following code creates the Views for the code:
try:
    query = '''
    CREATE VIEW NarcissistInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 1;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()

try:
    query = '''
    CREATE VIEW ExtroversionInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 2;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()

try:
    query = '''
    CREATE VIEW AgreeablenessInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 3;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()

try:
    query = '''
    CREATE VIEW ConscientiousnessInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 4;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()

try:
    query = '''
    CREATE VIEW OpennessInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 5;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()

try:
    query = '''
    CREATE VIEW NeuroticismInfo AS 
    SELECT p.Name, p.Symptoms, p.Solution, p.Miscellaneous, s.HighScoreInfo, s.LowScoreInfo
    FROM Personality p
    INNER JOIN ScoreInfo s ON s.PersonalityID = p.PersonalityID
    WHERE p.PersonalityID = 6;
    '''
    mycursor.execute(query)
    mydb.commit()
except:
    mydb.rollback()


mydb.close()