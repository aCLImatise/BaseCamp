version 1.0

task ExpandLinkspl {
  command <<<
    expand_links_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}