CREATE DATABASE  IF NOT EXISTS `psyche` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `psyche`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: psyche
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `agreeablenessinfo`
--

DROP TABLE IF EXISTS `agreeablenessinfo`;
/*!50001 DROP VIEW IF EXISTS `agreeablenessinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agreeablenessinfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `conscientiousnessinfo`
--

DROP TABLE IF EXISTS `conscientiousnessinfo`;
/*!50001 DROP VIEW IF EXISTS `conscientiousnessinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `conscientiousnessinfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `extroversioninfo`
--

DROP TABLE IF EXISTS `extroversioninfo`;
/*!50001 DROP VIEW IF EXISTS `extroversioninfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `extroversioninfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `narcissistinfo`
--

DROP TABLE IF EXISTS `narcissistinfo`;
/*!50001 DROP VIEW IF EXISTS `narcissistinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `narcissistinfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `neuroticisminfo`
--

DROP TABLE IF EXISTS `neuroticisminfo`;
/*!50001 DROP VIEW IF EXISTS `neuroticisminfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `neuroticisminfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `opennessinfo`
--

DROP TABLE IF EXISTS `opennessinfo`;
/*!50001 DROP VIEW IF EXISTS `opennessinfo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `opennessinfo` AS SELECT 
 1 AS `Name`,
 1 AS `Symptoms`,
 1 AS `Solution`,
 1 AS `Miscellaneous`,
 1 AS `HighScoreInfo`,
 1 AS `LowScoreInfo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `personality`
--

DROP TABLE IF EXISTS `personality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personality` (
  `PersonalityID` int NOT NULL,
  `TestID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Symptoms` varchar(700) DEFAULT NULL,
  `Solution` varchar(700) DEFAULT NULL,
  `Miscellaneous` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`PersonalityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personality`
--

LOCK TABLES `personality` WRITE;
/*!40000 ALTER TABLE `personality` DISABLE KEYS */;
INSERT INTO `personality` VALUES (1,1,'Narcissism','\n    - Have an unreasonably high sense of self-importance and require constant, excessive admiration.\n    - Expect to be recognized as superior even without achievements.\n    - Make achievements and talents seem bigger than they are.\n    - Be preoccupied with fantasies about success, power, brilliance, beauty or the perfect mate.\n    - Believe they are superior to others and can only spend time with or be understood by equally special people.\n    - Be critical of and look down on people they feel are not important.\n    - Have an inability or unwillingness to recognize the needs and feelings of others.\n    - Insist on having the best of everything — for instance, the best car or office.\n    ','\n    Because the cause of narcissistic personality disorder is unknown, there\'s no known way to prevent the condition. But it may help to:\n\n    - Get treatment as soon as possible for childhood mental health problems.\n    - Participate in family therapy to learn healthy ways to communicate or to cope with conflicts or emotional distress.\n    - Attend parenting classes and seek guidance from a therapist or social worker if needed.\n    ','\n        Although the cause of narcissistic personality disorder isn\'t known, \n    some researchers think that overprotective or neglectful parenting may \n    have an impact on children who are born with a tendency to develop the disorder. \n    Genetics and other factors also may play a role in the development of narcissistic personality disorder.\n    '),(2,2,'Extroversion','\n    High scorers:\n    - Sociable\n    - Energized by social interaction\n    - Excitement-seeking\n    - Enjoys being the center of attention\n    - Outgoing\n    Low scorers:\n    - Prefers solitude\n    - Fatigued by too much social interaction\n    - Reflective\n    - Dislikes being the center of attention\n    - Reserved\n    ','\n        One would not normally describe extraversion as a negative quality. \n    People respond differently to various forms of activities. If being\n    alone helps you relax and heal, then that\'s okay. Pushing too often\n    to be the center of attention COULD be negative, so it could be healthy\n    to keep impulses like that in control.\n    ','\n        Extraversion reflects the tendency and intensity to which someone seeks interaction with their environment, particularly socially. \n    It encompasses the comfort and assertiveness levels of people in social situations.\n    Additionally, it also reflects the sources from which someone draws energy.\n    '),(3,2,'Agreeableness','\n    High scorers:\n    - Trust (forgiving)\n    - Straightforwardness\n    - Altruism (enjoys helping)\n    - Compliance\n    - Modesty\n    - Sympathetic\n    - Empathy\n    Low scorers:\n    - Sceptical\n    - Demanding\n    - Insults and belittles others\n    - Stubborn\n    - Show-off\n    - Unsympathetic\n    - Doesn\'t care about how other people feel\n    ','\n        Agreeableness is a commendable attribute, with high scores indicating\n    that someone is a very pure person. While this is most often a positive\n    value, people can take advantage of trusting people. It\'s important to \n    take time to assess situations before you run in believing everything \n    people say. \n    ','\n        Agreeableness refers to how people tend to treat relationships with others. \n    Unlike extraversion which consists of the pursuit of relationships, \n    agreeableness focuses on people\'s orientation and interactions with others.\n    '),(4,2,'Conscientiousness','\n    High scorers:\n    - Competence\n    - Organized\n    - Dutifulness\n    - Achievement striving\n    - Self-disciplined\n    - Deliberation\n    Low scorers:\n    - Incompetent\n    - Disorganized\n    - Careless\n    - Procrastinates\n    - Indiscipline\n    - Impulsive\n    ','\n        Striving for achievements and self-discipline are important traits to have, \n    but shine a clear path towards perfectionism. It is just as valuable to remember \n    that you do not need to be perfect and that it is okay to cut yourself some slack.\n    ','\n        Conscientiousness describes a person\'s ability to regulate their impulse \n    control in order to engage in goal-directed behaviors. It measures elements \n    such as control, inhibition, and persistency of behavior.\n    '),(5,2,'Openness','\n    High scorers:\n    - Curious\n    - Imaginative\n    - Creative\n    - Open to trying new things\n    - Unconventional\n    Low scorers:\n    - Predictable\n    - Not very imaginative\n    - Dislikes change\n    - Prefer routine\n    - Traditional\n    ','\n        Being open to new experiences is extremely admirable along with being a trait\n    that many people have trouble with. However, too much curiosity has the chance of \n    leading you into dangerous situations. Weigh the pros and cons of activities before\n    jumping headfirst into something.\n    ','\n        Openness to experience refers to one\'s willingness to try new things as well \n    as engage in imaginative and intellectual activities. It includes the ability to \n    “think outside of the box.”\n    '),(6,2,'Neuroticism','\n    High scorers:\n    - Anxious\n    - Angry hostility (irritable)\n    - Experiences a lot of stress\n    - Self-consciousness (shy)\n    - Vulnerability\n    - Experiences dramatic shifts in mood\n    Low scorers:\n    - Doesn\'t worry much\n    - Calm\n    - Emotionally stable\n    - Confident\n    - Resilient\n    - Rarely feels sad or depressed\n    ','\n        Neuroticism is the second personality besides narcissism to have negative \n    intonations when high scores are received. Anxiety is something all people \n    struggle with throughout their lives. It is important to seek therapy when \n    it gets to be too difficult to manage. You are not alone in dealing with this\n    issue, it is important to remember that.\n    ','\n        Neuroticism describes the overall emotional stability of an \n    individual through how they perceive the world. It takes into \n    account how likely a person is to interpret events as threatening or difficult.\n    ');
/*!40000 ALTER TABLE `personality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `TestID` int NOT NULL,
  `QNum` varchar(5) NOT NULL,
  `Question` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`QNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (2,'B1','\n    Am the life of the party. \n    '),(2,'B10','\n    Have difficulty understanding abstract ideas\n    '),(2,'B11','\n    Feel comfortable around people \n    '),(2,'B12','\n    Insult people\n    '),(2,'B13','\n    Pay attention to details\n    '),(2,'B14','\n    Worry about things \n    '),(2,'B15','\n    Have a vivid imagination\n    '),(2,'B16','\n    Keep in the background\n    '),(2,'B17','\n    Sympathize with others\' feelings\n    '),(2,'B18','\n    Make a mess of things\n    '),(2,'B19','\n    Seldom feel blue\n    '),(2,'B2','\n    Feel little concern for others \n    '),(2,'B20','\n    Am not interested in abstract ideas\n    '),(2,'B21','\n    Start conversations \n    '),(2,'B22','\n    Am not interested in other people\'s problems\n    '),(2,'B23','\n    Get chores done right away\n    '),(2,'B24','\n    Am easily disturbed \n    '),(2,'B25','\n    Have excellent ideas\n    '),(2,'B26','\n    Have little to say\n    '),(2,'B27','\n    Have a soft heart\n    '),(2,'B28','\n    Often forget to put things back in their proper place\n    '),(2,'B29','\n    Get upset easily\n    '),(2,'B3','\n    Am always prepared \n    '),(2,'B30','\n    Do not have a good imagination\n    '),(2,'B31','\n    Talk to a lot of different people at parties\n    '),(2,'B32','\n    Am not really interested in others\n    '),(2,'B33','\n    Like order\n    '),(2,'B34','\n    Change my mood a lot \n    '),(2,'B35','\n    Am quick to understand things\n    '),(2,'B36','\n    Don\'t like to draw attention to myself\n    '),(2,'B37','\n    Take time out for others\n    '),(2,'B38','\n    Shirk my duties\n    '),(2,'B39','\n    Have frequent mood swings\n    '),(2,'B4','\n    Get stressed out easily \n    '),(2,'B40','\n    Use difficult words\n    '),(2,'B41','\n    Don\'t mind being the center of attention\n    '),(2,'B42','\n    Feel others\' emotions\n    '),(2,'B43','\n    Follow a schedule\n    '),(2,'B44','\n    Get irritated easily \n    '),(2,'B45','\n    Spend time reflecting on things\n    '),(2,'B46','\n    Am quiet around strangers\n    '),(2,'B47','\n    Make people feel at ease\n    '),(2,'B48','\n    Am exacting in my work\n    '),(2,'B49','\n    Often feel blue\n    '),(2,'B5','\n    Have a rich vocabulary \n    '),(2,'B50','\n    Am full of ideas\n    '),(2,'B6','\n    Don\'t talk a lot\n    '),(2,'B7','\n    Am interested in people\n    '),(2,'B8','\n    Leave my belongings around\n    '),(2,'B9','\n    Am relaxed most of the time\n    '),(1,'N1','\n    - A. I have a natural talent for influencing people.\n    - B. I am not good at influencing people.\n    '),(1,'N10','\n    - A. I am not sure if I would make a good leader.\n    - B. I see myself as a good leader.\n    '),(1,'N11','\n    - A. I am assertive.\n    - B. I wish I were more assertive.\n    '),(1,'N12','\n    - A. I like to have authority over other people.\n    - B. I don\'t mind following orders.\n    '),(1,'N13','\n    - A. I find it easy to manipulate people.\n    - B. I don\'t like it when I find myself manipulating people.\n    '),(1,'N14','\n    - A. I insist upon getting the respect that is due me.\n    - B. I usually get the respect that I deserve.\n    '),(1,'N15','\n    - A. I don\'t particularly like to show off my body.\n    - B. I like to show off my body.\n    '),(1,'N16','\n    - A. I can read people like a book.\n    - B. People are sometimes hard to understand.\n    '),(1,'N17','\n    - A. If I feel competent I am willing to take responsibility for making decisions.\n    - B. I like to take responsibility for making decisions.\n    '),(1,'N18','\n    - A. I just want to be reasonably happy.\n    - B. I want to amount to something in the eyes of the world.\n    '),(1,'N19','\n    - A. My body is nothing special.\n    - B. I like to look at my body.\n    '),(1,'N2','\n    - A. Modesty doesn\'t become me.\n    - B. I am essentially a modest person.\n    '),(1,'N20','\n    - A. I try not to be a show off.\n    - B. I will usually show off if I get the chance.\n    '),(1,'N21','\n    - A. I always know what I am doing.\n    - B. Sometimes I am not sure of what I am doing.\n    '),(1,'N22','\n    - A. I sometimes depend on people to get things done.\n    - B. I rarely depend on anyone else to get things done.\n    '),(1,'N23','\n    - A. Sometimes I tell good stories.\n    - B. Everybody likes to hear my stories.\n    '),(1,'N24','\n    - A. I expect a great deal from other people.\n    - B. I like to do things for other people.\n    '),(1,'N25','\n    - A. I will never be satisfied until I get all that I deserve.\n    - B. I take my satisfactions as they come.\n    '),(1,'N26','\n    - A. Compliments embarrass me.\n    - B. I like to be complimented.\n    '),(1,'N27','\n    - A. I have a strong will to power.\n    - B. Power for its own sake doesn\'t interest me.\n    '),(1,'N28','\n    - A. I don\'t care about new fads and fashions.\n    - B. I like to start new fads and fashions.\n    '),(1,'N29','\n    - A. I like to look at myself in the mirror.\n    - B. I am not particularly interested in looking at myself in the mirror.\n    '),(1,'N3','\n    - A. I would do almost anything on a dare.\n    - B. I tend to be a fairly cautious person.\n    '),(1,'N30','\n    - A. I really like to be the center of attention.\n    - B. It makes me uncomfortable to be the center of attention.\n    '),(1,'N31','\n    - A. I can live my life in any way I want to.\n    - B. People can\'t always live their lives in terms of what they want.\n    '),(1,'N32','\n    - A. Being an authority doesn\'t mean that much to me.\n    - B. People always seem to recognize my authority.\n    '),(1,'N33','\n    - A. I would prefer to be a leader.\n    - B. It makes little difference to me whether I am a leader or not.\n    '),(1,'N34','\n    - A. I am going to be a great person.\n    - B. I hope I am going to be successful.\n    '),(1,'N35','\n    - A. People sometimes believe what I tell them.\n    - B. I can make anybody believe anything I want them to.\n    '),(1,'N36','\n    - A. I am a born leader.\n    - B. Leadership is a quality that takes a long time to develop.\n    '),(1,'N37','\n    - A. I wish somebody would someday write my biography.\n    - B. I don\'t like people to pry into my life for any reason.\n    '),(1,'N38','\n    - A. I get upset when people don\'t notice how I look when I go out in public.\n    - B. I don\'t mind blending into the crowd when I go out in public.\n    '),(1,'N39','\n    - A. I am more capable than other people.\n    - B. There is a lot that I can learn from other people.\n    '),(1,'N4','\n    - A. When people compliment me I sometimes get embarrassed.\n    - B. I know that I am good because everybody keeps telling me so.\n    '),(1,'N40','\n    - A. I am much like everybody else.\n    - B. I am an extraordinary person.\n    '),(1,'N5','\n    - A. The thought of ruling the world frightens the hell out of me.\n    - B. If I ruled the world it would be a better place.\n    '),(1,'N6','\n    - A. I can usually talk my way out of anything.\n    - B. I try to accept the consequences of my behavior.\n    '),(1,'N7','\n    - A. I prefer to blend in with the crowd.\n    - B. I like to be the center of attention.\n    '),(1,'N8','\n    - A. I will be a success.\n    - B. I am not too concerned about success.\n    '),(1,'N9','\n    - A. I am no better or worse than most people.\n    - B. I think I am a special person.\n    ');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scoreinfo`
--

DROP TABLE IF EXISTS `scoreinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scoreinfo` (
  `PersonalityID` int NOT NULL,
  `TestID` int NOT NULL DEFAULT '1',
  `HighScoreInfo` varchar(800) DEFAULT NULL,
  `LowScoreInfo` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`PersonalityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scoreinfo`
--

LOCK TABLES `scoreinfo` WRITE;
/*!40000 ALTER TABLE `scoreinfo` DISABLE KEYS */;
INSERT INTO `scoreinfo` VALUES (1,1,'\n       A score below the threshold of around 20 is usually interpreted to be below the level \n    considered to be narcissism. While one would consider narcissism to always be a\n    negative trait, you could also say that a healthy amount of it is good for you. Having\n    self-confidence and a high self-esteem are important things to keep in mind in life. \n    The danger is having too much such that it develops into putting people down to gain \n    those things. \n    ','\n        Attaining a score above the 20 threshold usually implies that you contain qualities \n    associated with a more high-functioning narcissism. Beyond that, going above 30 is much\n    more concerning. Located in this test are certain questions that do not necessarily \n    target negative narcissism, however past 30 you are most certainly answering in \n    such a way that might imply you need to rethink certain behavioral choices. \n    '),(2,2,'\n        Those high on extraversion are generally assertive, sociable, fun-loving, and outgoing. \n        They thrive in social situations and feel comfortable voicing their opinions. \n        They tend to gain energy and become excited from being around others.\n    ','\n        Those who score low in extraversion are often referred to as introverts. \n        These people tend to be more reserved and quieter. \n        They prefer listening to others rather than needing to be heard.\n\n        Introverts often need periods of solitude in order to regain energy as \n        attending social events can be very tiring for them. Of importance to \n        note is that introverts do not necessarily dislike social events, but \n        instead find them tiring.\n    '),(3,2,'\n        Those high in agreeableness can be described as soft-hearted, trusting, \n        and well-liked. They are sensitive to the needs of others and are helpful \n        and cooperative. People regard them as trustworthy and altruistic.\n    ','\n        Those low in agreeableness may be perceived as suspicious, manipulative, \n        and uncooperative. They may be antagonistic when interacting with others, \n        making them less likely to be well-liked and trusted.\n    '),(4,2,'\n        Those who score high on conscientiousness can be described as organized, \n        disciplined, detail-oriented, thoughtful, and careful. They also have \n        good impulse control, which allows them to complete tasks and achieve goals.\n    ','\n        Those who score low on conscientiousness may struggle with impulse control, \n        leading to difficulty in completing tasks and fulfilling goals.\n        They tend to be more disorganized and may dislike too much structure. \n        They may also engage in more impulsive and careless behavior.\n    '),(5,2,'\n        Those who score high on openness to experience are perceived as creative and \n        artistic. They prefer variety and value independence. They are curious about their \n        surroundings and enjoy traveling and learning new things.\n    ','\n        People who score low on openness to experience prefer routine. They are uncomfortable \n        with change and trying new things so they prefer the familiar over the unknown. As \n        they are practical people, they often find it difficult to think creatively or abstractly.\n    '),(6,2,'\n        Those who score high on neuroticism often feel anxious, insecure and self-pitying. \n        They are often perceived as moody and irritable. They are prone to excessive sadness \n        and low self-esteem.\n    ','\n        Those who score low on neuroticism are more likely to calm, secure and self-satisfied. \n        They are less likely to be perceived as anxious or moody. They are more likely to have \n        high self-esteem and remain resilient.\n    ');
/*!40000 ALTER TABLE `scoreinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testinfo`
--

DROP TABLE IF EXISTS `testinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testinfo` (
  `TestID` int NOT NULL,
  `TestHistory` varchar(700) DEFAULT NULL,
  `Creators` varchar(700) DEFAULT NULL,
  `TestUse` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`TestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testinfo`
--

LOCK TABLES `testinfo` WRITE;
/*!40000 ALTER TABLE `testinfo` DISABLE KEYS */;
INSERT INTO `testinfo` VALUES (1,'\n    Narcissism in personality trait generally conceived of as excessive self love. In Greek mythology \n    Narcissus was a man who fell in love with his reflection in a pool of water. The NPI was developed \n    by Raskin and Hall (1979) for the measurement of narcissism as a personality trait in social psychological \n    research. It is based on the definition of narcissistic personality disorder found in the DSM-III, but is \n    not a diagnostic tool for NPD and instead measures subclinical or normal expressions of narcissism. So, even \n    someone who gets the highest possible score on the NPI does not necessarily have NPD.\n    ','Raskin and Hall, 1979','\n    The NPI is used in many organizations as a part of the hiring process. It is primarily used in areas where \n    high self-serving tendencies, positively correlated to narcissism, may be a very negative aspect in the job. \n    The NPI can not be used solely as a means of rejection, but it can be used to expect certain behaviors on the job. \n    Some organizations pursue narcissism in the individual as a good trait, especially for leadership positions or in a \n    group where creativity is considered a good measure. The NPI is also considered to be a good test of the dark \n    triad traits, the other two traits being machiavellianism and psychopathy.\n    '),(2,'\n    The Big 5\'s origins developed from the massive lexical research program by Allport and Odbert. Their descriptive \n    \"theory\" was that human beings notice individual personality differences. Since humans notice these differences \n    they would coin a word for those traits. Then, Goldberg recommended assessing personality with short phrases \n    rather than individual trait words. This became the format of items for the Big 5 questionnaire, employing \n    short phrases or sentences to assess an individual\'s personality. \n    ','\n    Originally developed in 1949, the big 5 personality traits is a theory established by D. W. Fiske and later \n    expanded upon by other researchers including Norman (1967), Smith (1967), Goldberg (1981), and McCrae & Costa (1987).\n    ','\n    Every type of organization, big and small, leverages the Big 5 to help them understand their students, \n    colleagues, and employees better. A lot of companies use this test for hiring decisions or for allocation \n    of different workers to different types of tasks. It simplifies and informs the selection process and any forthcoming interview.\n    The test gives recruiters a more holistic overview of the entire candidate hiring pool.\n    ');
/*!40000 ALTER TABLE `testinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `PersonalityID` int DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `NQ1` varchar(5) DEFAULT NULL,
  `NQ2` varchar(5) DEFAULT NULL,
  `NQ3` varchar(5) DEFAULT NULL,
  `NQ4` varchar(5) DEFAULT NULL,
  `NQ5` varchar(5) DEFAULT NULL,
  `NQ6` varchar(5) DEFAULT NULL,
  `NQ7` varchar(5) DEFAULT NULL,
  `NQ8` varchar(5) DEFAULT NULL,
  `NQ9` varchar(5) DEFAULT NULL,
  `NQ10` varchar(5) DEFAULT NULL,
  `NQ11` varchar(5) DEFAULT NULL,
  `NQ12` varchar(5) DEFAULT NULL,
  `NQ13` varchar(5) DEFAULT NULL,
  `NQ14` varchar(5) DEFAULT NULL,
  `NQ15` varchar(5) DEFAULT NULL,
  `NQ16` varchar(5) DEFAULT NULL,
  `NQ17` varchar(5) DEFAULT NULL,
  `NQ18` varchar(5) DEFAULT NULL,
  `NQ19` varchar(5) DEFAULT NULL,
  `NQ20` varchar(5) DEFAULT NULL,
  `NQ21` varchar(5) DEFAULT NULL,
  `NQ22` varchar(5) DEFAULT NULL,
  `NQ23` varchar(5) DEFAULT NULL,
  `NQ24` varchar(5) DEFAULT NULL,
  `NQ25` varchar(5) DEFAULT NULL,
  `NQ26` varchar(5) DEFAULT NULL,
  `NQ27` varchar(5) DEFAULT NULL,
  `NQ28` varchar(5) DEFAULT NULL,
  `NQ29` varchar(5) DEFAULT NULL,
  `NQ30` varchar(5) DEFAULT NULL,
  `NQ31` varchar(5) DEFAULT NULL,
  `NQ32` varchar(5) DEFAULT NULL,
  `NQ33` varchar(5) DEFAULT NULL,
  `NQ34` varchar(5) DEFAULT NULL,
  `NQ35` varchar(5) DEFAULT NULL,
  `NQ36` varchar(5) DEFAULT NULL,
  `NQ37` varchar(5) DEFAULT NULL,
  `NQ38` varchar(5) DEFAULT NULL,
  `NQ39` varchar(5) DEFAULT NULL,
  `NQ40` varchar(5) DEFAULT NULL,
  `BQ1` int DEFAULT NULL,
  `BQ2` int DEFAULT NULL,
  `BQ3` int DEFAULT NULL,
  `BQ4` int DEFAULT NULL,
  `BQ5` int DEFAULT NULL,
  `BQ6` int DEFAULT NULL,
  `BQ7` int DEFAULT NULL,
  `BQ8` int DEFAULT NULL,
  `BQ9` int DEFAULT NULL,
  `BQ10` int DEFAULT NULL,
  `BQ11` int DEFAULT NULL,
  `BQ12` int DEFAULT NULL,
  `BQ13` int DEFAULT NULL,
  `BQ14` int DEFAULT NULL,
  `BQ15` int DEFAULT NULL,
  `BQ16` int DEFAULT NULL,
  `BQ17` int DEFAULT NULL,
  `BQ18` int DEFAULT NULL,
  `BQ19` int DEFAULT NULL,
  `BQ20` int DEFAULT NULL,
  `BQ21` int DEFAULT NULL,
  `BQ22` int DEFAULT NULL,
  `BQ23` int DEFAULT NULL,
  `BQ24` int DEFAULT NULL,
  `BQ25` int DEFAULT NULL,
  `BQ26` int DEFAULT NULL,
  `BQ27` int DEFAULT NULL,
  `BQ28` int DEFAULT NULL,
  `BQ29` int DEFAULT NULL,
  `BQ30` int DEFAULT NULL,
  `BQ31` int DEFAULT NULL,
  `BQ32` int DEFAULT NULL,
  `BQ33` int DEFAULT NULL,
  `BQ34` int DEFAULT NULL,
  `BQ35` int DEFAULT NULL,
  `BQ36` int DEFAULT NULL,
  `BQ37` int DEFAULT NULL,
  `BQ38` int DEFAULT NULL,
  `BQ39` int DEFAULT NULL,
  `BQ40` int DEFAULT NULL,
  `BQ41` int DEFAULT NULL,
  `BQ42` int DEFAULT NULL,
  `BQ43` int DEFAULT NULL,
  `BQ44` int DEFAULT NULL,
  `BQ45` int DEFAULT NULL,
  `BQ46` int DEFAULT NULL,
  `BQ47` int DEFAULT NULL,
  `BQ48` int DEFAULT NULL,
  `BQ49` int DEFAULT NULL,
  `BQ50` int DEFAULT NULL,
  `Narcissism` int DEFAULT NULL,
  `Extroversion` int DEFAULT NULL,
  `Agreeableness` int DEFAULT NULL,
  `Conscientiousness` int DEFAULT NULL,
  `Neuroticism` int DEFAULT NULL,
  `Openness` int DEFAULT NULL,
  `DeleteFlag` int DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,3,'Joe',21,'Male','a','b','b','a','b','b','b','a','b','a','b','b','b','b','a','b','a','b','a','a','b','b','b','b','a','a','b','a','b','b','a','a','b','b','b','b','a','a','a','b',5,1,4,5,3,1,4,2,4,2,4,2,4,5,4,2,4,2,1,1,4,1,2,1,4,1,5,2,1,1,4,1,4,4,5,2,5,2,4,4,5,4,4,5,5,2,5,4,2,5,15,34,36,28,16,34,0),(2,2,'Jill',21,'female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,4,4,2,2,1,4,3,4,2,4,3,4,2,3,2,4,2,3,2,4,2,2,2,3,2,4,2,2,2,4,2,4,2,3,2,4,3,2,3,4,4,4,2,4,2,3,4,2,3,12,29,26,26,29,23,0),(5,4,'Jeffrey',82,'Male','a','b','a','a','a','b','b','b','b','a','a','a','a','b','b','b','b','a','a','a','a','a','b','b','b','b','b','b','b','b','b','b','b','b','a','a','a','a','a','a',4,3,2,1,4,5,2,2,3,2,1,3,4,5,2,3,4,2,1,2,3,4,5,3,2,1,3,4,2,1,2,3,4,5,3,2,1,2,3,4,5,3,2,1,2,3,4,3,2,1,18,21,18,24,20,21,0),(6,6,'Susanna',28,'Female','a','b','a','a','b','b','a','b','a','a','b','b','a','b','a','a','b','b','a','a','b','b','a','b','a','b','a','b','a','a','b','b','a','a','b','b','a','b','a','b',3,4,2,1,3,4,5,2,1,3,4,5,2,1,2,3,4,5,3,2,1,2,3,4,5,3,2,1,2,3,4,5,3,2,1,2,3,4,3,2,1,2,3,4,3,2,1,2,3,3,21,19,15,17,22,19,0),(7,4,'Bob',100,'Male','a','b','a','a','b','b','a','b','a','b','b','b','a','a','b','b','b','a','a','a','b','b','b','a','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','b',2,4,3,5,1,2,3,4,5,3,2,1,2,3,4,5,3,2,1,2,3,4,5,3,2,1,2,3,4,5,2,1,2,3,4,3,2,1,2,3,4,5,3,2,1,2,3,4,5,3,22,20,22,23,17,16,1),(8,6,'Lawrence',20,'Male','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','a','A','a','a','a','a','a','a','a','a','a','a','a',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,23,20,16,16,32,12,0),(9,5,'Messi',35,'Male','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','b','a','a','a','b','b','b','b','a','a','a','a','b','b','b','b','a','b','a',5,5,5,5,5,5,5,1,1,1,1,1,1,5,5,5,5,5,5,5,1,1,3,3,2,1,1,1,1,2,3,4,5,3,2,2,3,4,5,3,2,3,4,5,3,2,1,2,3,4,19,17,21,23,14,24,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'psyche'
--

--
-- Dumping routines for database 'psyche'
--

--
-- Final view structure for view `agreeablenessinfo`
--

/*!50001 DROP VIEW IF EXISTS `agreeablenessinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agreeablenessinfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `conscientiousnessinfo`
--

/*!50001 DROP VIEW IF EXISTS `conscientiousnessinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `conscientiousnessinfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `extroversioninfo`
--

/*!50001 DROP VIEW IF EXISTS `extroversioninfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `extroversioninfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `narcissistinfo`
--

/*!50001 DROP VIEW IF EXISTS `narcissistinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `narcissistinfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `neuroticisminfo`
--

/*!50001 DROP VIEW IF EXISTS `neuroticisminfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `neuroticisminfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 6) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `opennessinfo`
--

/*!50001 DROP VIEW IF EXISTS `opennessinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `opennessinfo` AS select `p`.`Name` AS `Name`,`p`.`Symptoms` AS `Symptoms`,`p`.`Solution` AS `Solution`,`p`.`Miscellaneous` AS `Miscellaneous`,`s`.`HighScoreInfo` AS `HighScoreInfo`,`s`.`LowScoreInfo` AS `LowScoreInfo` from (`personality` `p` join `scoreinfo` `s` on((`s`.`PersonalityID` = `p`.`PersonalityID`))) where (`p`.`PersonalityID` = 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 16:45:33
