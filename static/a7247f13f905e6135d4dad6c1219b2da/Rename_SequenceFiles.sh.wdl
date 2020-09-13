version 1.0

task RenameSequenceFilessh {
  command <<<
    Rename_SequenceFiles_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}