version 1.0

task Monosgengdbpy {
  command <<<
    mono_sgen_gdb_py
  >>>
  output {
    File out_stdout = stdout()
  }
}