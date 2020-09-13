version 1.0

task PreprocessTplhtml {
  command <<<
    preprocess_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}