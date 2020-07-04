version 1.0

task CollectMgf {
  input {
    String exp_no_directory
    String dd_results_file
  }
  command <<<
    collect_mgf \
      ~{exp_no_directory} \
      ~{dd_results_file}
  >>>
  parameter_meta {
    exp_no_directory: ""
    dd_results_file: ""
  }
}