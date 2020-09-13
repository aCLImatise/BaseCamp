version 1.0

task Updatesortbedstarchslurm {
  command <<<
    update_sort_bed_starch_slurm
  >>>
  output {
    File out_stdout = stdout()
  }
}