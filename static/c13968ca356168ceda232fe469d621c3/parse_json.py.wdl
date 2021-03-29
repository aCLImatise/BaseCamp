version 1.0

task ParseJsonpy {
  command <<<
    parse_json_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/aquamis:1.3.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}