version 1.0

task Updatesortbedstarchslurmtypical {
  command <<<
    update_sort_bed_starch_slurm_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}