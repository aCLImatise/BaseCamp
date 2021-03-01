version 1.0

task BlastToPsl {
  command <<<
    blastToPsl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}