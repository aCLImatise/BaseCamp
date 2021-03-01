version 1.0

task Winconfigbat {
  command <<<
    winconfig_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}