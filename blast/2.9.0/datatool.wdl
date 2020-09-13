version 1.0

task Datatool {
  command <<<
    datatool
  >>>
  output {
    File out_stdout = stdout()
  }
}