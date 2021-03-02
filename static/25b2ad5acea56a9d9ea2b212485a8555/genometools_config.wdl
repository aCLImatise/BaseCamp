version 1.0

task Genometoolsconfig {
  command <<<
    genometools_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}