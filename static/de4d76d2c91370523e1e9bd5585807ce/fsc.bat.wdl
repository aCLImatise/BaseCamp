version 1.0

task Fscbat {
  command <<<
    fsc_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}