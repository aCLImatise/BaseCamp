version 1.0

task Snnsbat {
  command <<<
    snnsbat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}