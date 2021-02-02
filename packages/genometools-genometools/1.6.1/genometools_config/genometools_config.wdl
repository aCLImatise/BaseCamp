version 1.0

task Genometoolsconfig {
  command <<<
    genometools_config
  >>>
  output {
    File out_stdout = stdout()
  }
}