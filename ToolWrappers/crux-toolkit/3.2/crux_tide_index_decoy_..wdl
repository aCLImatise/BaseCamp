version 1.0

task CruxTideindexDecoy_ {
  input {
    String crux
    String tide_index
    File protein_fast_a_file
  }
  command <<<
    crux tide_index decoy__ \
      ~{crux} \
      ~{tide_index} \
      ~{protein_fast_a_file}
  >>>
  parameter_meta {
    crux: ""
    tide_index: ""
    protein_fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}