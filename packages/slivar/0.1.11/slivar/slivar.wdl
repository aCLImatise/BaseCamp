version 1.0

task Slivar {
  command <<<
    slivar
  >>>
  output {
    File out_stdout = stdout()
  }
}