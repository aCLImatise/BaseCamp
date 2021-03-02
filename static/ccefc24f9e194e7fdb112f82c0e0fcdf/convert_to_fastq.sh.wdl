version 1.0

task ConvertToFastqsh {
  command <<<
    convert_to_fastq_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}