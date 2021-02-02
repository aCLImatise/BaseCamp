version 1.0

task RenameIdspl {
  command <<<
    renameIds_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}