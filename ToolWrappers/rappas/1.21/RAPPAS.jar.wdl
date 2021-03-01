version 1.0

task RAPPASjar {
  command <<<
    RAPPAS_jar
  >>>
  runtime {
    docker: "quay.io/biocontainers/rappas:1.21--0"
  }
  output {
    File out_stdout = stdout()
  }
}