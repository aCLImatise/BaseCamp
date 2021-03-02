version 1.0

task RenameIdspl {
  command <<<
    renameIds_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}