version 1.0

task SelectSubFamilyFromStockholmpl {
  command <<<
    SelectSubFamilyFromStockholm_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}