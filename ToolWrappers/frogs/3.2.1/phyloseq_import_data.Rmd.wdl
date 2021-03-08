version 1.0

task PhyloseqImportDataRmd {
  command <<<
    phyloseq_import_data_Rmd
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  output {
    File out_stdout = stdout()
  }
}