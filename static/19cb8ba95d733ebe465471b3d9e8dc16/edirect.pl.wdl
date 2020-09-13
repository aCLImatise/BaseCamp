version 1.0

task Edirectpl {
  command <<<
    edirect_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}