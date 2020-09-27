version 1.0

task Setpythonpathbat {
  command <<<
    setpythonpath_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}