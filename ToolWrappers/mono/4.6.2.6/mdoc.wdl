version 1.0

task Mdoc {
  command <<<
    mdoc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}