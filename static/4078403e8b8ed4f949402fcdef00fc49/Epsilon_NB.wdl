version 1.0

task EpsilonNB.py {
  input {
    String nb_results
    String epsilon
    String results_file
  }
  command <<<
    Epsilon-NB.py \
      ~{nb_results} \
      ~{epsilon} \
      ~{results_file}
  >>>
  parameter_meta {
    nb_results: ""
    epsilon: ""
    results_file: ""
  }
}