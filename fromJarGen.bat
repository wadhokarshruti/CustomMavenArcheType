call mvn install:install-file -Dfile=C:\Users\ShrutiWadhokar\Desktop\SpringBoot\automate\Sample-Mvn-Archetype-archetype-1.0-SNAPSHOT.jar -DgroupId=custom.archetype -DartifactId=custom-project-artifact -Dversion=1.0-SNAPSHOT -Dpackaging=jar -DcreateChecksum=true

set /p proj-base-path="Enter path where project to be created :  "

cd %proj-base-path%

set /p proj-artifactId="Enter name for the project:  "
set /p proj-groupId="Enter desired base package eg. com.practice:  "
set /p proj-version="Enter version:  "
call mvn archetype:generate -DarchetypeGroupId=custom.archetype -DarchetypeArtifactId=custom-project-artifact -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=%proj-groupId% -DartifactId=%proj-artifactId% -Dversion=%proj-version%
echo on
set /p new_variable="Press any key to exit.. " 
