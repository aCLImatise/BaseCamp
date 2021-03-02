version 1.0

task UtilsWfdll {
  command <<<
    UtilsWf_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}