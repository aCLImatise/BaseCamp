version 1.0

task BroadUtilspy {
  command <<<
    broad_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}