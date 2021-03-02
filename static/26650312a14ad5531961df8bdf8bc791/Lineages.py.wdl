version 1.0

task Lineagespy {
  command <<<
    Lineages_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}