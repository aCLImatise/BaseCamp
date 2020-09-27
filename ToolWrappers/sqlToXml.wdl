version 1.0

task SqlToXml {
  input {
    String? top_tag
    File? query
    Int? tab
    Int? max_list
    String database
    String dump_spec_do_tod
  }
  command <<<
    sqlToXml \
      ~{database} \
      ~{dump_spec_do_tod} \
      ~{if defined(top_tag) then ("-topTag " +  '"' + top_tag + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(max_list) then ("-maxList " +  '"' + max_list + '"') else ""}
  >>>
  parameter_meta {
    top_tag: "- Give the top level XML tag the given name.  By\\ndefault it will be the same as the database name."
    query: "- Instead of dumping whole database, just dump those\\nrecords matching SQL select statement in file.sql.\\nThis statement should be of the form:\\nselect * from table where ...\\nor\\nselect table.* from table,otherTables where ...\\nWhere the table is the same as the table in the first\\nline of dumpSpec."
    tab: "- number of spaces betweeen tabs in xml.dumpSpec - by default it's 8.\\n(It may be best just to avoid tabs in that file though.)"
    max_list: "- This will limit any lists in the output to no more than\\nsize N.  This is mostly just for testing.\\n"
    database: ""
    dump_spec_do_tod: ""
  }
  output {
    File out_stdout = stdout()
  }
}