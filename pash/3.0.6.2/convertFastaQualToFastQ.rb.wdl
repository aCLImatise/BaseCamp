version 1.0

task ConvertFastaQualToFastQrb {
  command <<<
    convertFastaQualToFastQ_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}