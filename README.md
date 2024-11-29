# Crowdfunding_ETL
SECTION 1 - CREATE CATEGORY AND SUBCATEGORY DATAFRAMES - AHMAD MANSOUR
All work for this section was completed independently and with the help of Xpert AI tool.
1.1) Get the crowdfunding_info_df columns:
    This block of code used df.columns in order to extract the names of the columns from the dataframe - this is necessary to know which column stores the information required for creating the category and subcategory dataframes.
1.2) Assign the category and subcategory values to category and subcategory columns:
    Now that we know that the information is stored into a single column, separated by '/' (for instance music/rock), this block of code uses str.split('/') to separate them into two distinct columns.
1.3) Get the unique categories and subcategories in separate lists:
    In order use this information to create dataframes, this block of code uses df[column].unique().tolist() to convert the columns into lists.
1.4) Get the number of distinct values in the categories and subcategories lists:
    This block of code is intuitive - uses len to get the number of entries in each list, used as a sanity check to ensure all entries are present in the dataframes that will be made.
1.5) Create numpy arrays from 1-9 for the categories and 1-24 for the subcategories:
    This block of code uses the information from 1.4 about the number of entries to create numpy arrays with the same amount of entries, using np.arange. Numpy arrays are much easier to manipulate and work with than lists, hence the need for this block of code.
1.6) Use a list comprehension to add "cat"/"subcat" to each category_id:
    This block of code is meant to add "cat" or "subcat" to the numpy arrays to give them more logic than being mere numbers. Uses a list comprehension instead of a for loop as it is more efficient.
1.7) Finally, using pd.DataFrame and to_csv allows us to use the numpy array as index and (sub)categories data to create the dataframes and export them as csv files.






















SECTION 3-Contacts dataframe-Muskan Narwal
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


SECTION 4-Crowdfunding Database:
4.1)Using the 4 Csv Files created from the above Dataframes -An ERD sketch is created using the QuickDBD.
4.2)With the information From the ERD-Table Schema is Created for each csv File.
4.3)The Datatypes,Primary Keys, Foreign Keys are mentioned in Schema for each Column.
4.4) Using the PgAdmin-CrowdFundind-db is Created and the data from the Csv Files is Imported in the tables.