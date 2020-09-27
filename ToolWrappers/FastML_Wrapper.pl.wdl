version 1.0

task FastMLWrapperpl {
  command <<<
    FastML_Wrapper_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}