version 1.0

task AffiliationOTUTplhtml {
  command <<<
    affiliation_OTU_tpl_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}