#!/bin/bash
set -x

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`

actual="$bin"/../actual

perl $bin/phragmite_db.pl $actual/ch02-mr-intro/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch02-mr-intro)
perl $bin/phragmite_db.pl $actual/ch03/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch03)
perl $bin/phragmite_db.pl $actual/ch04/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch04)
perl $bin/phragmite_db.pl $actual/ch06-avro/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch06-avro)
perl $bin/phragmite_db.pl $actual/ch05/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch05)
perl $bin/phragmite_db.pl $actual/ch05/ $bin/../../../hadoop-book-mr-dev/pom.xml
perl $bin/phragmite_db.pl $actual/ch05/ $bin/../../ch05/src/main/resources/max-temp-workflow/workflow.xml
perl $bin/phragmite_db.pl $actual/ch07/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch07)
perl $bin/phragmite_db.pl $actual/common/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../common)
perl $bin/phragmite_db.pl $actual/ch08/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch08)
perl $bin/phragmite_db.pl $actual/ch14/ $(grep -ElR '(// ?cc|// ?==)' --include '*.java' $bin/../../ch14)
