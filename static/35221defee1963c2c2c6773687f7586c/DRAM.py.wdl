version 1.0

task DRAMpy {
  command <<<
    DRAM_py
  >>>
  output {
    File out_stdout = stdout()
  }
}