version 1.0

task Migraine {
  command <<<
    migraine
  >>>
  runtime {
    docker: "quay.io/biocontainers/migraine:0.6.0--h7d875b9_0"
  }
  output {
    File out_stdout = stdout()
  }
}