version 1.0

task Irisjar {
  command <<<
    iris_jar
  >>>
  runtime {
    docker: "quay.io/biocontainers/irissv:1.0.4--1"
  }
  output {
    File out_stdout = stdout()
  }
}