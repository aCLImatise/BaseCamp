version 1.0

task Epic2bw {
  command <<<
    epic2_bw
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}