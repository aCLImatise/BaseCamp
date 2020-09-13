version 1.0

task HgLoadOut {
  input {
    File? tab_file
    Boolean? split
    String? table
    String database
    File file
  }
  command <<<
    hgLoadOut \
      ~{database} \
      ~{file} \
      ~{if defined(tab_file) then ("-tabFile " +  '"' + tab_file + '"') else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    tab_file: "- don't actually load database, just create tab file"
    split: "- load chrN_rmsk separate tables even if a single file is given"
    table: "- use a different suffix other than the default (rmsk)"
    database: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}