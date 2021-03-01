version 1.0

task Dnacomp {
  command <<<
    dnacomp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}