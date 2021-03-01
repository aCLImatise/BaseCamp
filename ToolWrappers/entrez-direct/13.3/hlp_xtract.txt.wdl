version 1.0

task Hlpxtracttxt {
  command <<<
    hlp_xtract_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}