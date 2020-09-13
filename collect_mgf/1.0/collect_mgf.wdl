version 1.0

task CollectMgf {
  input {
    Directory exp_no_directory
    File dd_results_file
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
  output {
    File out_stdout = stdout()
  }
}