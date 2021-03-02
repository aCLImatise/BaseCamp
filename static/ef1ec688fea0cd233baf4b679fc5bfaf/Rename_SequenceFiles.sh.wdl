version 1.0

task RenameSequenceFilessh {
  command <<<
    Rename_SequenceFiles_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}