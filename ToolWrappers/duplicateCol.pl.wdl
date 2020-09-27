version 1.0

task DuplicateColpl {
  command <<<
    duplicateCol_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}