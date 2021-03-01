version 1.0

task Mkreport {
  command <<<
    mkreport
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}