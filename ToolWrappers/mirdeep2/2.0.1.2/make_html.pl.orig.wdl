version 1.0

task MakeHtmlplorig {
  command <<<
    make_html_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}