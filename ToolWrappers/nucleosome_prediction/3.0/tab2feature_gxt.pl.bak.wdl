version 1.0

task Tab2featureGxtplbak {
  command <<<
    tab2feature_gxt_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}