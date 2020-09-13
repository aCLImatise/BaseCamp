version 1.0

task HgLoadOutJoined {
  input {
    File? tab_file
    String? table
    String database
    File file
  }
  command <<<
    hgLoadOutJoined \
      ~{database} \
      ~{file} \
      ~{if defined(tab_file) then ("-tabFile " +  '"' + tab_file + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    tab_file: "- don't actually load database, just create tab file"
    table: "- use a different suffix other than the default (rmskOutBaseline)"
    database: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}