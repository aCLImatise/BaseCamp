version 1.0

task Scalapbat {
  command <<<
    scalap_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}