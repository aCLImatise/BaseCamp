version 1.0

task Enawebincli {
  command <<<
    ena_webin_cli
  >>>
  runtime {
    docker: "quay.io/biocontainers/ena-webin-cli:3.7.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}