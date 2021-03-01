version 1.0

task Arvtag {
  command <<<
    arv_tag
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}