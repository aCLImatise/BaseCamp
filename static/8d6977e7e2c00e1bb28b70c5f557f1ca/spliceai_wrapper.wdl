version 1.0

task Spliceaiwrapper {
  command <<<
    spliceai_wrapper
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}