version 1.0

task Setreg {
  command <<<
    setreg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}