version 1.0

task Varfishcli {
  command <<<
    varfish_cli
  >>>
  runtime {
    docker: "quay.io/biocontainers/varfish-cli:0.2.7--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}