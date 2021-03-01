version 1.0

task Monogdbpy {
  command <<<
    mono_gdb_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}