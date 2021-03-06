mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=activation -Dversion=0.0.2 -Dfile=jars/activation.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true
mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=additionnal -Dversion=0.0.2 -Dfile=jars/additionnal.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true
mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=dropbox-android-sdk -Dversion=1.6.3 -Dfile=jars/dropbox-android-sdk-1.6.3.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true
mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=mail -Dversion=0.0.2 -Dfile=jars/mail.jar -Dpackaging=jar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true
mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=owncloud-android-library -Dversion=0.0.3 -Dfile=jars/owncloud-android-library.aar -Dpackaging=aar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true
mvn install:install-file -DgroupId=com.mendhak.gpsloggersupportfiles -DartifactId=windows-live-sdk -Dversion=0.0.2 -Dfile=jars/windows-live-sdk.aar -Dpackaging=aar -DgeneratePom=true -DlocalRepositoryPath=./repository  -DcreateChecksum=true

REPODIR=./repository
java -jar nexus-indexer-3.0.4-cli.jar -r $REPODIR -i $REPODIR/.index -d $REPODIR/.index -n localrepo
