version 1.0

task RImportDataRmd {
  command <<<
    r_import_data_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}