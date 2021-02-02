version 1.0

task MegahitCorePopcnt {
  command <<<
    megahit_core_popcnt
  >>>
  output {
    File out_stdout = stdout()
  }
}