version 1.0

task Fastachecksum {
  command <<<
    fastachecksum
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}