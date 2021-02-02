version 1.0

task AffiliationsStatTplhtml {
  command <<<
    affiliations_stat_tpl_html
  >>>
  output {
    File out_stdout = stdout()
  }
}