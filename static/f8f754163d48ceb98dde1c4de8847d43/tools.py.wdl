version 1.0

task Toolspy {
  command <<<
    tools_py
  >>>
  output {
    File out_stdout = stdout()
  }
}