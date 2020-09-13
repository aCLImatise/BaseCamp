version 1.0

task Rustgdb {
  command <<<
    rust_gdb
  >>>
  output {
    File out_stdout = stdout()
  }
}