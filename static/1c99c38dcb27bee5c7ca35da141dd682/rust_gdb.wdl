version 1.0

task Rustgdb {
  command <<<
    rust_gdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}