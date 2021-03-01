version 1.0

task Omssacl {
  command <<<
    omssacl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}