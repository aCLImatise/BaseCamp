version 1.0

task MakeHtml2plorig {
  command <<<
    make_html2_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}