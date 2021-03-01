version 1.0

task AffiliationsStatTplhtml {
  command <<<
    affiliations_stat_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}