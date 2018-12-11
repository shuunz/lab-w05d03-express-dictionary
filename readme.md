# LAB: Express Dictionary

![](https://media.giphy.com/media/oFPiPgqwof4Pe/giphy.gif)

This afternoon you will be building out a full CRUD application! You have been given some starter data and a scafolding of the entire app - no new files need to be made.

## Requirements:

- A `home` page which welcomes the user to the app and has a link to the terms index page.
- A `index` page which has a list of all of the names of the terms in our database. Each term should be a link to their specific show page. There should also be a link to create a new pokemon, and a link back to the home page.
- A `show` page which shows the name and definition of a specific term. On this page there should be a button that deletes the term. There should also be a link to a page that edits the term.
- A `new` page that has a form where a user can input a name and definition for a new term (try using a [text area](https://www.w3schools.com/tags/tag_textarea.asp) for the definition). There should also be a link back to the list of terms.
- A `edit` page that has a form that allows the user to edit a specific term. There should also be links back to all terms and back to the individual term you are editing.

## Set Up

- `npm install`
- change the user in `db/config.js`
- `psql -f db/seed.sql`
- `nodemon index.js -e html,css,js` OR `node index.js`

