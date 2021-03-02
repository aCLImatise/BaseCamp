version 1.0

task Smoove {
  command <<<
    smoove
  >>>
  runtime {
    docker: "quay.io/biocontainers/smoove:0.2.6--0"
  }
  output {
    File out_stdout = stdout()
  }
}