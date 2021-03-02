version 1.0

task CommandLinedll {
  command <<<
    CommandLine_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}