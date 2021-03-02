version 1.0

task Minimus2blat {
  command <<<
    minimus2_blat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}