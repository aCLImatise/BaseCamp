version 1.0

task AddSurrogatesToFrgCtgFile {
  command <<<
    addSurrogatesToFrgCtgFile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}