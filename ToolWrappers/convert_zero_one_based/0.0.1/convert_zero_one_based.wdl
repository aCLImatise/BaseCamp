version 1.0

task ConvertZeroOneBased {
  command <<<
    convert_zero_one_based
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}