version 1.0

task Structure {
  command <<<
    structure
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}