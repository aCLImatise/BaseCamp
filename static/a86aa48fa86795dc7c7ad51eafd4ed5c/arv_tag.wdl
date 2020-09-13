version 1.0

task Arvtag {
  command <<<
    arv_tag
  >>>
  output {
    File out_stdout = stdout()
  }
}