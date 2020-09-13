version 1.0

task DRAMvpy {
  command <<<
    DRAM_v_py
  >>>
  output {
    File out_stdout = stdout()
  }
}