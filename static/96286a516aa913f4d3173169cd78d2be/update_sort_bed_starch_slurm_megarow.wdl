version 1.0

task Updatesortbedstarchslurmmegarow {
  command <<<
    update_sort_bed_starch_slurm_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}