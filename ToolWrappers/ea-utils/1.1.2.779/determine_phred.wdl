version 1.0

task Determinephred {
  command <<<
    determine_phred
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}