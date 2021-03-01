version 1.0

task Fasta2DAM {
  input {
    Boolean? import_files_listed
    Boolean? import_data_sequence
    Boolean? v
  }
  command <<<
    fasta2DAM \
      ~{if (import_files_listed) then "-f" else ""} \
      ~{if (import_data_sequence) then "-i" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    import_files_listed: ": import files listed 1/line in given file."
    import_data_sequence: ": import data from stdin, use optiona name as data source.\\n: otherwise, import sequence of specified files.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}