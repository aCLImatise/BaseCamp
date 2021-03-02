version 1.0

task Dnamlk {
  command <<<
    dnamlk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}