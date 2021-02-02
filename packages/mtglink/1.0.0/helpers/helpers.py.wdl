version 1.0

task Helperspy {
  command <<<
    helpers_py
  >>>
  output {
    File out_stdout = stdout()
  }
}