version 1.0

task Goexportprologpl {
  command <<<
    go_export_prolog_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}