version 1.0

task NBBL.py {
  input {
    String nb_results
    String blastn_results
    String results_file
  }
  command <<<
    NB-BL.py \
      ~{nb_results} \
      ~{blastn_results} \
      ~{results_file}
  >>>
  parameter_meta {
    nb_results: ""
    blastn_results: ""
    results_file: ""
  }
}