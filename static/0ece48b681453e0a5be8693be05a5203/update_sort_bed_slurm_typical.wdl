version 1.0

task Updatesortbedslurmtypical {
  command <<<
    update_sort_bed_slurm_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}