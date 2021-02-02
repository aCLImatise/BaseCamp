version 1.0

task Makeblastdb {
  input {
    String? dbtype
  }
  command <<<
    makeblastdb \
      ~{if defined(dbtype) then ("-dbtype " +  '"' + dbtype + '"') else ""}
  >>>
  parameter_meta {
    dbtype: "[-title database_title] [-parse_seqids]"
  }
  output {
    File out_stdout = stdout()
  }
}