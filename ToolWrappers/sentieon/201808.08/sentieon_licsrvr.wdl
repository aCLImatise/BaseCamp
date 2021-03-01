version 1.0

task Sentieonlicsrvr {
  command <<<
    sentieon_licsrvr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}