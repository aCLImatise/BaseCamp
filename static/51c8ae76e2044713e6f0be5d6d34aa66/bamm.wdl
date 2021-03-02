version 1.0

task Bamm {
  command <<<
    bamm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}