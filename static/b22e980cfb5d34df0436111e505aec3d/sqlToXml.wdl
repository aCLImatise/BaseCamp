version 1.0

task SqlToXml {
  input {
    String? tab
    String? max_list
    String database
    String dump_spec_do_tod
    String output_dot_xml
  }
  command <<<
    sqlToXml \
      ~{database} \
      ~{dump_spec_do_tod} \
      ~{output_dot_xml} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(max_list) then ("-maxList " +  '"' + max_list + '"') else ""}
  >>>
  parameter_meta {
    tab: "- number of spaces betweeen tabs in xml.dumpSpec - by default it's 8. (It may be best just to avoid tabs in that file though.)"
    max_list: "- This will limit any lists in the output to no more than size N.  This is mostly just for testing."
    database: ""
    dump_spec_do_tod: ""
    output_dot_xml: ""
  }
}