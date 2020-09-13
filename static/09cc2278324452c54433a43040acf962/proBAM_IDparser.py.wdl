version 1.0

task ProBAMIDparserpy {
  command <<<
    proBAM_IDparser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}