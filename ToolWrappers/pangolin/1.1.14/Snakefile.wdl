version 1.0

task Snakefile {
  command <<<
    Snakefile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}