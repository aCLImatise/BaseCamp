version 1.0

task HisatgenotypeConvertCodispy {
  command <<<
    hisatgenotype_convert_codis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}