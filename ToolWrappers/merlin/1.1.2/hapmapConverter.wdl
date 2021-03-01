version 1.0

task HapmapConverter {
  command <<<
    hapmapConverter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}