version 1.0

task CruxGeneratePeptides {
  input {
    String protein_fast_a_file
  }
  command <<<
    crux generate-peptides \
      ~{protein_fast_a_file}
  >>>
  parameter_meta {
    protein_fast_a_file: ""
  }
}