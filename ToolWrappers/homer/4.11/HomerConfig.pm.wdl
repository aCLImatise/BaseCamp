version 1.0

task HomerConfigpm {
  command <<<
    HomerConfig_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}