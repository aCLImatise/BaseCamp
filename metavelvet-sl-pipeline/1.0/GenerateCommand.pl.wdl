version 1.0

task GenerateCommandpl {
  command <<<
    GenerateCommand_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}