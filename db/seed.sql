DROP DATABASE IF EXISTS express_terms;
CREATE DATABASE express_terms;

\c express_terms

CREATE TABLE terms(
  id serial primary key, 
  name varchar, 
  definition text
);

INSERT INTO terms(name, definition) VALUES
  ('server','a server is a computer that serves websites or data to a "client"'),
  ('module','a module is a javascript file in node.  Modules allow us to make a single javascript app that has many javascript files!'),
  ('module.exports','module.exports is the part of a node module used for exporting data.  Any data in the module.exports will then be accessible from other javascript files!'),
  ('require','`require` is a command that lets us import data from other javascript files.  Any data that is exported with `module.exports` can be imported in another file using the `require` command.'),
  ('node','Node is a javascript runtime environment.  It lets us run javascript without a browser.'),
  ('npm','npm stands for "Node Package Manager".  NPM is a place where "packages" are hosted.  You can install code from here to be used in your own application!'),
  ('package','A package is like a library.  A piece of code written by other people that can be used inside our app.'),
  ('package.json','Package.json is a file that contains data about our application.  It includes a lot of things like the name of our app, a description, the version number, etc.  It also includes information about what packages we are using in our app.  We create the package.json file automatically when we run "npm init"'),
  ('route','Routes are urls.  A user can make a request to a route (like /cats or /greetings or /greetings/ali) to get data.  When the request is sent to a server, the server looks at the route to decide what information should be returned to the user.'),
  ('request','requests are objects sent by users to "request" information.  The request object contains a lot of information, including routes, parameters and other things that tell us what data the user wants.'),
  ('response','responses are the objects built by the server to be sent back to the user.'),
  ('parameter','parameters are part of the route.  Users can   send parameters to request a specific part of the data provided by a server. For example "/greetings/trevor"');