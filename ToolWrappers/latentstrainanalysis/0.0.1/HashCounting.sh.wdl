version 1.0

task HashCountingsh {
  command <<<
    HashCounting_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}