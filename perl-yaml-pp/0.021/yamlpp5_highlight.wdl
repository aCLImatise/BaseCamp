version 1.0

task Yamlpp5highlight {
  command <<<
    yamlpp5_highlight
  >>>
  output {
    File out_stdout = stdout()
  }
}