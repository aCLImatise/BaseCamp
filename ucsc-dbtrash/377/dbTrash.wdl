version 1.0

task DbTrash {
  input {
    Float? age
    Boolean? drop
    Int? drop_limit
    String? db
    Boolean? history_too
    Boolean? ext_file
    Boolean? ext_del
    Boolean? topdir
    Boolean? table_status
    Boolean? del_lost_table
    Int? verbose
  }
  command <<<
    dbTrash \
      ~{if defined(age) then ("-age " +  '"' + age + '"') else ""} \
      ~{if (drop) then "-drop" else ""} \
      ~{if defined(drop_limit) then ("-dropLimit " +  '"' + drop_limit + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (history_too) then "-historyToo" else ""} \
      ~{if (ext_file) then "-extFile" else ""} \
      ~{if (ext_del) then "-extDel" else ""} \
      ~{if (topdir) then "-topDir" else ""} \
      ~{if (table_status) then "-tableStatus" else ""} \
      ~{if (del_lost_table) then "-delLostTable" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    age: "- number of hours old to qualify for drop.  N can be a float."
    drop: "- actually drop the tables, default is merely to display tables."
    drop_limit: "- ERROR out if number of tables to drop is greater than limit,\\n- default is to drop all expired tables"
    db: "- Specify a database to work with, default is customTrash."
    history_too: "- also consider the table called 'history' for deletion.\\n- default is to leave 'history' alone no matter how old.\\n- this applies to the table 'metaInfo' also."
    ext_file: "- check extFile for lines that reference files\\n- no longer in trash"
    ext_del: "- delete lines in extFile that fail file check\\n- otherwise just verbose(2) lines that would be deleted"
    topdir: "- directory name to prepend to file names in extFile\\n- default is /usr/local/apache/trash\\n- file names in extFile are typically: \\\"../trash/ct/...\\\""
    table_status: "- use 'show table status' to get size data, very inefficient"
    del_lost_table: "- delete tables that exist but are missing from metaInfo\\n- this operation can be even slower than -tableStatus\\n- if there are many tables to check."
    verbose: "- 2 == show arguments, dates, and dropped tables,\\n- 3 == show date information for all tables.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}