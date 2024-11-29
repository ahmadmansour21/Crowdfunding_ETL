# Crowdfunding_ETL























3-Contacts dataframe:
3.1) Using Python Dictionary Methods - contact.xlsx file is imported in a Dataframe.
3.2) Import the File Contacts.xlsx.
3.3) The file is json Formatted- so Iteration is done using dictionary and the dictionary values from the keys are extracted using a python list comprehension-using json(loads)
3.4) The values for each row are added to a list.
3.5) Each Name column value is splitted into a first name  and last name column and two new columns have been created in dataframe.
        Regular Exprssions (Regex) -used to split names .
3.6) Contacts Dataframe is Created that contains-
A column named "contact_id"  that contains the unique number of the contact person.
- A column named "first_name" that contains the first name of the contact person.
- A column named "last_name" that contains the first name of the contact person.
- A column named "email" that contains the email address of the contact person.


4-Crowdfunding Database-
4.1)Using the 4 Csv Files created from the above Dataframes -An ERD sketch is created using the QuickDBD.
4.2)With the information From the ERD-Table Schema is Created for each csv File.
4.3)The Datatypes,Primary Keys, Foreign Keys are mentioned in Schema for each Column.
4.4) Using the PgAdmin-CrowdFundind-db is Created and the data from the Csv Files is Imported in the tables.