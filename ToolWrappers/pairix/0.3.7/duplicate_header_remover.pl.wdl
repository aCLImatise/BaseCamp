version 1.0

task DuplicateHeaderRemoverpl {
  command <<<
    duplicate_header_remover_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}