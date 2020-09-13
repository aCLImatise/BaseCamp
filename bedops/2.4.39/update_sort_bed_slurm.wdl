version 1.0

task Updatesortbedslurm {
  command <<<
    update_sort_bed_slurm
  >>>
  output {
    File out_stdout = stdout()
  }
}