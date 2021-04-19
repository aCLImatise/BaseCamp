version 1.0

task Scalacbat {
  command <<<
    scalac_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}