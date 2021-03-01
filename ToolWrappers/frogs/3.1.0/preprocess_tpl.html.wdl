version 1.0

task PreprocessTplhtml {
  command <<<
    preprocess_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}