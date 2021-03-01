version 1.0

task Basqcol {
  command <<<
    basqcol
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}