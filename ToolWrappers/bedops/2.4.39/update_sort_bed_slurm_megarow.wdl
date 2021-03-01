version 1.0

task Updatesortbedslurmmegarow {
  command <<<
    update_sort_bed_slurm_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}