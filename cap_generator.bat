cd .\Sample-Mvn-Archetype\

call mvn archetype:create-from-project
echo on

cd .\target\generated-sources\archetype\

call mvn clean install
echo on

cd H:\Desktop\pocs\CAP_Generator\

cd

call mvn archetype:generate -DarchetypeGroupId=org.example -DarchetypeArtifactId=Sample-Mvn-Archetype-archetype -DarchetypeVersion=1.0-SNAPSHOT -DgroupId=com.westpac -DartifactId=CAP-Generated-Boilerplate -Dversion=1.0-SNAPSHOT
echo on
set /p new_variable="Enter value " 
