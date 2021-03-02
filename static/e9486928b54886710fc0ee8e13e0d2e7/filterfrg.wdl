version 1.0

task Filterfrg {
  command <<<
    filterfrg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}