version 1.0

task HisatgenotypeConvertCodispy {
  command <<<
    hisatgenotype_convert_codis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}