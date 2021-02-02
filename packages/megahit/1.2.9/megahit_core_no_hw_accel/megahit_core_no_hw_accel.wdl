version 1.0

task MegahitCoreNoHwAccel {
  command <<<
    megahit_core_no_hw_accel
  >>>
  output {
    File out_stdout = stdout()
  }
}