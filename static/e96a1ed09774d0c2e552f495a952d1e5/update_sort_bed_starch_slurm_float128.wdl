version 1.0

task Updatesortbedstarchslurmfloat128 {
  command <<<
    update_sort_bed_starch_slurm_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}