version 1.0

task CruxTideIndex {
  input {
    String protein_fast_a_file
    String index_name
  }
  command <<<
    crux tide-index \
      ~{protein_fast_a_file} \
      ~{index_name}
  >>>
  parameter_meta {
    protein_fast_a_file: ""
    index_name: ""
  }
}