version 1.0

task Bamrecompress {
  command <<<
    bamrecompress
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}