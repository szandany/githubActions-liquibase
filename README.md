# githubActions-liquibase

This is a repository that contains Liquibase projects (H2 Database) with Github Actions Workflow demonstrations for the following setups:
1. Liquibase Command Line Interface (CLI). 
2. Liquibase Maven commands with a Springboot app
3. Liquibase Gradle commands
4. Liquibase running in Docker

# Usage
1. Fork this repository so you can have your own copy. https://guides.github.com/activities/forking/
2. From the browser go to your github "githubActions-liquibase" repository, under the "workflow" section, go to the "Actions" tab and pick any workflow mentioned above.
3. Click "run workflow".

# Notes
All workflows are set to be running on a Ubuntu-latest VM Github hosted runner.

# Adjustments
1. You can adjust your workflow by going to the workflow script in githubActions-liquibase/.github/workflows/&lt;workflow name&gt;.yaml
2. You can add more commands and flags to the workflow script
3. For each of the projects, you will find its corresponding files in this repository.  
For example: <br />
 - For Liquibase CLI commands - H2_project folder containing files like "liquibase.properties" and a changeLog file.<br />
 - For Gradle - Gradle_h2 folder containing files like "build.gradle".<br />
 - For Maven - SalesManager_h2_version folder containing files like "pom.xml" and "application.properties" springboot class java files.<br />
 - For Docker - Docker folder containing files like a changeLog file. 
