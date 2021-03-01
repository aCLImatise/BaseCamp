version 1.0

task JasmineIrisjar {
  command <<<
    jasmine_iris_jar
  >>>
  runtime {
    docker: "quay.io/biocontainers/jasminesv:1.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}