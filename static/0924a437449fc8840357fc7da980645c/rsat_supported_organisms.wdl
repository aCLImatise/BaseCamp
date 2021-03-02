version 1.0

task Rsatsupportedorganisms {
  command <<<
    rsat_supported_organisms
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}