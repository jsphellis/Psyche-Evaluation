## Summary:

* App contains features allowing users to take both the Big5 personality test and the Narcissistic Personality Inventory Test. Users have the ability to switch user, delete user, calculate top personality (highest rating), gain information on top personality, pull background information about either test, export scores to an excel sheet, pull average scores for the database, and pull out information about a specific personality.

## References:

* https://www.simplypsychology.org/big-five-personality.html#:~:text=The%20Big%20Five%20personality%20traits,throughout%20most%20of%20one's%20lifetime.
* chrome-extension://efaidnbmnnnibpcajpcglclefindmkaj/https://sites.temple.edu/rtassessment/files/2018/10/Table_BFPT.pdf
* https://www.decision-making-confidence.com/narcissistic-personality-inventory.html

## Build Instructions:

* If not installed:
    * pip install pymysql
    * pip install xlwt
    * pip install pandas

* python setup.py (Only if the database, schemas, and views have not been generated)
* python app.py



