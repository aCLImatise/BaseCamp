version 1.0

task CorsetFastaIDChanger {
  input {
    String cluster_file
    String fast_a_file
  }
  command <<<
    corset_fasta_ID_changer \
      ~{cluster_file} \
      ~{fast_a_file}
  >>>
  parameter_meta {
    cluster_file: ""
    fast_a_file: ""
  }
}