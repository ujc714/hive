--! qt:dataset:src1
--! qt:dataset:src
set hive.mapred.mode=nonstrict;
set hive.exec.pre.hooks=;

EXPLAIN
SELECT *  FROM src src1 JOIN src src2 WHERE src1.key < 10 and src2.key < 10 SORT BY src1.key, src1.value, src2.key, src2.value;

SELECT *  FROM src src1 JOIN src src2 WHERE src1.key < 10 and src2.key < 10 SORT BY src1.key, src1.value, src2.key, src2.value;
