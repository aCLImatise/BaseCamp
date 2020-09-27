version 1.0

task BuildBlastDBpy {
  input {
    File make_blast_db_path
    File sequence_file
  }
  command <<<
    BuildBlastDB_py \
      ~{make_blast_db_path} \
      ~{sequence_file}
  >>>
  parameter_meta {
    make_blast_db_path: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}