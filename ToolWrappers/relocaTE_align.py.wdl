version 1.0

task RelocaTEAlignpy {
  command <<<
    relocaTE_align_py
  >>>
  output {
    File out_stdout = stdout()
  }
}