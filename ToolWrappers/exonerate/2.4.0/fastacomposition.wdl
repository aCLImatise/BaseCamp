version 1.0

task Fastacomposition {
  command <<<
    fastacomposition
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}