version 1.0

task Varfishannotator {
  command <<<
    varfish_annotator
  >>>
  output {
    File out_stdout = stdout()
  }
}