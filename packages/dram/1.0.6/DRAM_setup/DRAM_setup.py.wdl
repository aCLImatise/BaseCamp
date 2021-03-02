version 1.0

task DRAMsetuppy {
  command <<<
    DRAM_setup_py
  >>>
  output {
    File out_stdout = stdout()
  }
}