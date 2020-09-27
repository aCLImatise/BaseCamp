version 1.0

task NormalisationTplhtml {
  command <<<
    normalisation_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}