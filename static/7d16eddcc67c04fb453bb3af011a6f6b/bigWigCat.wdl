version 1.0

task BigWigCat {
  command <<<
    bigWigCat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}