version 1.0

task Ctgvalidate {
  command <<<
    ctgvalidate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}