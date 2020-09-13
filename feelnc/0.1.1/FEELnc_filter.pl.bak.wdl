version 1.0

task FEELncFilterplbak {
  command <<<
    FEELnc_filter_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}