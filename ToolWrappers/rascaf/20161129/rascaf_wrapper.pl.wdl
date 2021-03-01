version 1.0

task Rascafwrapperpl {
  command <<<
    rascaf_wrapper_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}