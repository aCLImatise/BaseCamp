version 1.0

task FilterComponentspy {
  command <<<
    filter_components_py
  >>>
  output {
    File out_stdout = stdout()
  }
}