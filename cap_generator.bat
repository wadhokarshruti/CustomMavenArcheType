cd .\Sample-Mvn-Archetype\

call mvn archetype:create-from-project
echo on

cd .\target\generated-sources\archetype\

call mvn clean install
echo on

cd ../../../../

cd

set /p artifactId="Enter name for the project:  "
set /p groupId="Enter desired base package eg. com.practice:  "
call mvn archetype:generate -DarchetypeGroupId=org.example -DarchetypeArtifactId=Sample-Mvn-Archetype-archetype -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=%DgroupId% -DartifactId=%artifactId% -Dversion=1.0-SNAPSHOT
echo on
set /p new_variable="Enter value " 
