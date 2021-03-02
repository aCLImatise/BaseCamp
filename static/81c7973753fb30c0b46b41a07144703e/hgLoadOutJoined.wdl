version 1.0

task HgLoadOutJoined {
  input {
    File? tab_file
    String? table
    String database
    File var_file
  }
  command <<<
    hgLoadOutJoined \
      ~{database} \
      ~{var_file} \
      ~{if defined(tab_file) then ("-tabFile " +  '"' + tab_file + '"') else ""} \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tab_file: "- don't actually load database, just create tab file"
    table: "- use a different suffix other than the default (rmskOutBaseline)"
    database: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}