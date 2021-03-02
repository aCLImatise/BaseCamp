version 1.0

task Utilsdll {
  command <<<
    Utils_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}