version 1.0

task Primersearch {
  command <<<
    primersearch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}