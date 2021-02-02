version 1.0

task Util {
  command <<<
    util
  >>>
  output {
    File out_stdout = stdout()
  }
}