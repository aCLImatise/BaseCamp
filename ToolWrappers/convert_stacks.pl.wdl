version 1.0

task ConvertStackspl {
  command <<<
    convert_stacks_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}