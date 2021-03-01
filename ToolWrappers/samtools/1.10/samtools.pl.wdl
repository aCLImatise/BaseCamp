version 1.0

task Samtoolspl {
  command <<<
    samtools_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}