version 1.0

task Fgmp {
  command <<<
    fgmp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}