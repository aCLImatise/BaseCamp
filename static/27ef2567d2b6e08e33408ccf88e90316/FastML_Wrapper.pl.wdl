version 1.0

task FastMLWrapperpl {
  command <<<
    FastML_Wrapper_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}