version 1.0

task Monosgengdbpy {
  command <<<
    mono_sgen_gdb_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}