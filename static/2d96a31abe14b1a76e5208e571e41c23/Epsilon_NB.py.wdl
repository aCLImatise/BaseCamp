version 1.0

task EpsilonNBpy {
  input {
    String nb_results
    String epsilon
    File results_file
  }
  command <<<
    Epsilon_NB_py \
      ~{nb_results} \
      ~{epsilon} \
      ~{results_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_results: ""
    epsilon: ""
    results_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}