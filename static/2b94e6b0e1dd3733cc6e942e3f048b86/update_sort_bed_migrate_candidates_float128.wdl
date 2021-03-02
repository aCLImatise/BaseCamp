version 1.0

task Updatesortbedmigratecandidatesfloat128 {
  command <<<
    update_sort_bed_migrate_candidates_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}