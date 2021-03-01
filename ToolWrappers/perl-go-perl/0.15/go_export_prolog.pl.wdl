version 1.0

task Goexportprologpl {
  command <<<
    go_export_prolog_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}