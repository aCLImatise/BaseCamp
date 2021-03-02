version 1.0

task Cgat {
  command <<<
    cgat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}