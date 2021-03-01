version 1.0

task NormalisationTplhtml {
  command <<<
    normalisation_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}