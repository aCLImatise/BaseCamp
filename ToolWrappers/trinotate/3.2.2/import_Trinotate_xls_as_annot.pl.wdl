version 1.0

task ImportTrinotateXlsAsAnnotpl {
  command <<<
    import_Trinotate_xls_as_annot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}