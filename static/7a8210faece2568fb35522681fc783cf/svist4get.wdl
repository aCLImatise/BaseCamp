version 1.0

task Svist4get {
  command <<<
    svist4get
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}