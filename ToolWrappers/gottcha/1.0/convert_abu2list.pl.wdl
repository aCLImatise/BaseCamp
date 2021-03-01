version 1.0

task ConvertAbu2listpl {
  command <<<
    convert_abu2list_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}