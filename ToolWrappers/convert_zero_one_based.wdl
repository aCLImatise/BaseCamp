version 1.0

task ConvertZeroOneBased {
  command <<<
    convert_zero_one_based
  >>>
  output {
    File out_stdout = stdout()
  }
}