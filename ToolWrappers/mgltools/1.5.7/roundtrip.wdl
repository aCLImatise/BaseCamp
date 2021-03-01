version 1.0

task Roundtrip {
  command <<<
    roundtrip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}