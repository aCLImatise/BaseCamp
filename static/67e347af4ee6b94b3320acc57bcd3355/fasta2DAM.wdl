version 1.0

task Fasta2DAM {
  input {
    Boolean? import_files_listed
    Boolean? import_data_stdin
    Boolean? v
  }
  command <<<
    fasta2DAM \
      ~{true="-f" false="" import_files_listed} \
      ~{true="-i" false="" import_data_stdin} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    import_files_listed: ": import files listed 1/line in given file."
    import_data_stdin: ": import data from stdin, use optiona name as data source. : otherwise, import sequence of specified files."
    v: ""
  }
}