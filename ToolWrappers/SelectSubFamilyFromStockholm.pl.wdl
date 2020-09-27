version 1.0

task SelectSubFamilyFromStockholmpl {
  command <<<
    SelectSubFamilyFromStockholm_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}