version 1.0

task Updatesortbedslurm {
  command <<<
    update_sort_bed_slurm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}