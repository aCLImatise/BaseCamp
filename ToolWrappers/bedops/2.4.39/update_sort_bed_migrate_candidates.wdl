version 1.0

task Updatesortbedmigratecandidates {
  command <<<
    update_sort_bed_migrate_candidates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}