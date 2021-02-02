version 1.0

task AddSurrogatesToFrgCtgFile {
  command <<<
    addSurrogatesToFrgCtgFile
  >>>
  output {
    File out_stdout = stdout()
  }
}