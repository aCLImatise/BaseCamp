version 1.0

task BuildBlastDB.py {
  input {
    String make_blast_db_path
    String sequence_file
  }
  command <<<
    BuildBlastDB.py \
      ~{make_blast_db_path} \
      ~{sequence_file}
  >>>
  parameter_meta {
    make_blast_db_path: ""
    sequence_file: ""
  }
}