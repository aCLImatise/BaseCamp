version 1.0

task Snaptools {
  command <<<
    snaptools
  >>>
  output {
    File out_stdout = stdout()
  }
}