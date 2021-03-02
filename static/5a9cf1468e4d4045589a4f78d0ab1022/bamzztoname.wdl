version 1.0

task Bamzztoname {
  command <<<
    bamzztoname
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}