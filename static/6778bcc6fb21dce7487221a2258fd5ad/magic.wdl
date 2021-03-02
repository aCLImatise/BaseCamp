version 1.0

task Magic {
  command <<<
    magic
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}