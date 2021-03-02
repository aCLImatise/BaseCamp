version 1.0

task Seatac {
  command <<<
    seatac
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}