version 1.0

task MakeHtmlplorig {
  command <<<
    make_html_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}