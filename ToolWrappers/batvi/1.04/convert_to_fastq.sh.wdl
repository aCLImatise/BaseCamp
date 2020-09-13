version 1.0

task ConvertToFastqsh {
  command <<<
    convert_to_fastq_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}