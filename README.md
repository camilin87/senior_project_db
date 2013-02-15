<h1>senior_project_db</h1>

the database for the senior project

<h2>Database Users</h2>
  <p><code>
    root --should not be used
  </code></p>
  <p><code>
    spw_r --readonly access user, should be used for non changing queries
  </code></p>
  <p><code>
    spw_rw --user with read write access. Use it the least possible
  </code></p>

<h1>Deployment Guide</h2>

<p>
1- Connect to the remote server ussing ssh
</p>

<p>
2- Download the database from the git repository<br/>
    <code>
    git clone git://github.com/camilin87/senior_project_db.git
    </code
</p>

<p>
3- Enter the repository folder<br/>
    <code>
    cd senior_project_db
    </code>
</p>    
    
<p>    
4- If you already had downloaded the repository download the latest version.</br>
    <code>
    git pull
    </code>
</p>

<p>
5-Drop all the existing tables in the DB by running this very long command.<br/>
    <code>
    echo "set foreign_key_checks=0;" > drop.sql && mysqldump -u spw_rw -p --no-data senior_project_website | grep ^DROP >> drop.sql && echo "set foreign_key_checks=1;" >> drop.sql && mysql -u spw_rw -p senior_project_website < drop.sql && rm drop.txt
    </code>
</p>

<p>
6- Import the newly downloaded database.<br/>
    <code>
    mysql -p -u spw_rw senior_project_website < senior_project_website.sql  
    </code>
</p>
