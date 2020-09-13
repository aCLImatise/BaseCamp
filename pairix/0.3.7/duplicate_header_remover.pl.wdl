version 1.0

task DuplicateHeaderRemoverpl {
  command <<<
    duplicate_header_remover_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}