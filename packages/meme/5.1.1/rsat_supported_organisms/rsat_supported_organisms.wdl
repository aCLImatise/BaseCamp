version 1.0

task Rsatsupportedorganisms {
  command <<<
    rsat_supported_organisms
  >>>
  output {
    File out_stdout = stdout()
  }
}