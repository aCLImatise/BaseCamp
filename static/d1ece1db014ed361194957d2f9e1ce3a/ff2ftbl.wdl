version 1.0

task Ff2ftbl {
  command <<<
    ff2ftbl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}