version 1.0

task Seqxref {
  command <<<
    seqxref
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}