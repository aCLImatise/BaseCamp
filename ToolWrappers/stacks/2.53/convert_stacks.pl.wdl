version 1.0

task ConvertStackspl {
  command <<<
    convert_stacks_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}