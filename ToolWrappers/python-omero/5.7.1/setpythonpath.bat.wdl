version 1.0

task Setpythonpathbat {
  command <<<
    setpythonpath_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}