version 1.0

task ConvertAbu2listpl {
  command <<<
    convert_abu2list_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}