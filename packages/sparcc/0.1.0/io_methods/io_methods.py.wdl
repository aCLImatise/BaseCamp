version 1.0

task IoMethodspy {
  command <<<
    io_methods_py
  >>>
  output {
    File out_stdout = stdout()
  }
}