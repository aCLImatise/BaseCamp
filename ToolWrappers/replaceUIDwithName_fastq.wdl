version 1.0

task ReplaceUIDwithNamefastq {
  command <<<
    replaceUIDwithName_fastq
  >>>
  output {
    File out_stdout = stdout()
  }
}