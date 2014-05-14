sql
===

sql files for describing the database tables. 

userregistry
-------

```userregistry.sql``` contains all the fields that users have zero or one of, which include their profile page information.

causeskillindex
---------------

```causeskillindex``` describe two seperate tables, but virtually identical tables, one for causes and one for skills. the predifined causes and skills that users can add to their profiles and  to activity postings. These definition rows are called "items." Since people have preferred names for similar causes and skills, the index contains an array of possible names the user can select for the same cause or skills. All causes and skills added to profiles and postings must use a name in the array in the index. The causes and skills also have an ID number, which works like the Dewey Decimal System, where a range of numbers represent a distinct category of causes and skills. For example, number 1000-1999 may only contain all language skills, and 1000-1200 may be translation, while 1200-1300 might be composition. the description field contains a brief description of the respective item that helps users find the a cause or skill with full text search and make sure the cause/skill was the correct item the user looked for.

causesandskill
-------

```causesandskill``` describes two nearly identical tables for causes and skills. These tables contain all items added to user's profiles. The ```username``` column references a username from the ```userregistry``` table, and the ```causeid``` or ```skillid``` columns reference the ```itemid``` from their respective dictionary table described by ```causeskillindex.sql```. Users select a name from an array defined in the dictionary, and can submit a description for their experience with the specific cause or skill. 


###Why the '~'?
emacs makes them during autosaving of buffers.
