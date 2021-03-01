version 1.0

task ProBAMIDparserpy {
  command <<<
    proBAM_IDparser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}