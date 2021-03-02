version 1.0

task NBBLpy {
  input {
    String nb_results
    String blastn_results
    File results_file
  }
  command <<<
    NB_BL_py \
      ~{nb_results} \
      ~{blastn_results} \
      ~{results_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_results: ""
    blastn_results: ""
    results_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}