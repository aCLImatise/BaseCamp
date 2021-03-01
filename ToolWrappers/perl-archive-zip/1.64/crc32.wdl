version 1.0

task Crc32 {
  command <<<
    crc32
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}