version 1.0

task CorsetFastaIDChanger {
  input {
    File cluster_file
    File fast_a_file
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
  output {
    File out_stdout = stdout()
  }
}