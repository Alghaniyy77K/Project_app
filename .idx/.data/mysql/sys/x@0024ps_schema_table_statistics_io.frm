TYPE=VIEW
query=select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`),`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`)
md5=1cbc73d7bab53e57bfac894c9697fd30
updatable=0
algorithm=2
definer_user=mariadb.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=0001736822538714814
create-version=2
source=SELECT extract_schema_from_file_name(file_name) AS table_schema,\n       extract_table_from_file_name(file_name) AS table_name,\n       SUM(count_read) AS count_read,\n       SUM(sum_number_of_bytes_read) AS sum_number_of_bytes_read,\n       SUM(sum_timer_read) AS sum_timer_read,\n       SUM(count_write) AS count_write,\n       SUM(sum_number_of_bytes_write) AS sum_number_of_bytes_write,\n       SUM(sum_timer_write) AS sum_timer_write,\n       SUM(count_misc) AS count_misc,\n       SUM(sum_timer_misc) AS sum_timer_misc\n  FROM performance_schema.file_summary_by_instance\n GROUP BY table_schema, table_name;
client_cs_name=utf8mb3
connection_cl_name=utf8mb3_general_ci
view_body_utf8=select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`),`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`)
mariadb-version=101108
