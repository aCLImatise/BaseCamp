version 1.0

task Updatesortbedslurmfloat128 {
  command <<<
    update_sort_bed_slurm_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}