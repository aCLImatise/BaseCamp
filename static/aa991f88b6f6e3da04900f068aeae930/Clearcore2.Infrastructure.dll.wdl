version 1.0

task Clearcore2Infrastructuredll {
  command <<<
    Clearcore2_Infrastructure_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}