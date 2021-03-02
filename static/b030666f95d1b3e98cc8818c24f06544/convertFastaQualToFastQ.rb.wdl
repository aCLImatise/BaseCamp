version 1.0

task ConvertFastaQualToFastQrb {
  command <<<
    convertFastaQualToFastQ_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}