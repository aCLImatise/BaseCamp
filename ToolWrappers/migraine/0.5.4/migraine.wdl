version 1.0

task Migraine {
  command <<<
    migraine
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}