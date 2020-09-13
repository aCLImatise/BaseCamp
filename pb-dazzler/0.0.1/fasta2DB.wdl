version 1.0

task Fasta2DB {
  input {
    Boolean? import_files_listed
    Boolean? import_data_stdin
    Boolean? v
  }
  command <<<
    fasta2DB \
      ~{if (import_files_listed) then "-f" else ""} \
      ~{if (import_data_stdin) then "-i" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    import_files_listed: ": import files listed 1/line in given file."
    import_data_stdin: ": import data from stdin, use optiona name as data source.\\n: otherwise, import sequence of specified files.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}