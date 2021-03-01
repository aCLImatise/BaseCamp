version 1.0

task Rsatsupportedorganisms {
  command <<<
    rsat_supported_organisms
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  output {
    File out_stdout = stdout()
  }
}