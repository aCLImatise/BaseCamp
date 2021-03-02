version 1.0

task ExtractBCITrees {
  input {
    String random_seed
    String bci_threshold
    Int max_output_trees
    File mr_bayes_dot_tr_probs_input_file_one_dot_dot_n
    File nexus_output_file
  }
  command <<<
    extractBCITrees \
      ~{random_seed} \
      ~{bci_threshold} \
      ~{max_output_trees} \
      ~{mr_bayes_dot_tr_probs_input_file_one_dot_dot_n} \
      ~{nexus_output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    random_seed: ""
    bci_threshold: ""
    max_output_trees: ""
    mr_bayes_dot_tr_probs_input_file_one_dot_dot_n: ""
    nexus_output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_nexus_output_file = "${in_nexus_output_file}"
  }
}