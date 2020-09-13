version 1.0

task CombineFile {
  command <<<
    combineFile
  >>>
  output {
    File out_stdout = stdout()
  }
}