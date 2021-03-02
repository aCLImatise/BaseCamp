version 1.0

task MakeHtml2plorig {
  command <<<
    make_html2_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}