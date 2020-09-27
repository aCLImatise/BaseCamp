version 1.0

task Updatesortbedslurmmegarow {
  command <<<
    update_sort_bed_slurm_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}