version 1.0

task Rascafwrapperpl {
  command <<<
    rascaf_wrapper_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}