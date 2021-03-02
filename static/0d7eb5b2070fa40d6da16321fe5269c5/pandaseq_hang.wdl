version 1.0

task Pandaseqhang {
  command <<<
    pandaseq_hang
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}