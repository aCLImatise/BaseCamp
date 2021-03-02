version 1.0

task DuplicateColpl {
  command <<<
    duplicateCol_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}