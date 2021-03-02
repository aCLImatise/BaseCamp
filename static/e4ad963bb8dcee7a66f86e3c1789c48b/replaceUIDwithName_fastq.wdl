version 1.0

task ReplaceUIDwithNamefastq {
  command <<<
    replaceUIDwithName_fastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}