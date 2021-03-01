version 1.0

task Clairpy {
  command <<<
    clair_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/clair:2.1.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}