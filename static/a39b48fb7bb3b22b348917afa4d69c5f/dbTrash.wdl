version 1.0

task DbTrash {
  input {
    String? age
    Boolean? drop
    String? drop_limit
    String? db
    Boolean? history_too
    Boolean? ext_file
    Boolean? ext_del
    Boolean? topdir
    Boolean? table_status
    Boolean? del_lost_table
    String? verbose
  }
  command <<<
    dbTrash \
      ~{if defined(age) then ("-age " +  '"' + age + '"') else ""} \
      ~{true="-drop" false="" drop} \
      ~{if defined(drop_limit) then ("-dropLimit " +  '"' + drop_limit + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-historyToo" false="" history_too} \
      ~{true="-extFile" false="" ext_file} \
      ~{true="-extDel" false="" ext_del} \
      ~{true="-topDir" false="" topdir} \
      ~{true="-tableStatus" false="" table_status} \
      ~{true="-delLostTable" false="" del_lost_table} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    age: "- number of hours old to qualify for drop.  N can be a float."
    drop: "- actually drop the tables, default is merely to display tables."
    drop_limit: "- ERROR out if number of tables to drop is greater than limit, - default is to drop all expired tables"
    db: "- Specify a database to work with, default is customTrash."
    history_too: "- also consider the table called 'history' for deletion. - default is to leave 'history' alone no matter how old. - this applies to the table 'metaInfo' also."
    ext_file: "- check extFile for lines that reference files - no longer in trash"
    ext_del: "- delete lines in extFile that fail file check - otherwise just verbose(2) lines that would be deleted"
    topdir: "- directory name to prepend to file names in extFile - default is /usr/local/apache/trash - file names in extFile are typically: \"../trash/ct/...\""
    table_status: "- use 'show table status' to get size data, very inefficient"
    del_lost_table: "- delete tables that exist but are missing from metaInfo - this operation can be even slower than -tableStatus - if there are many tables to check."
    verbose: "- 2 == show arguments, dates, and dropped tables, - 3 == show date information for all tables."
  }
}