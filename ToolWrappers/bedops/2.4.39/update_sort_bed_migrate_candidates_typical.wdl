version 1.0

task Updatesortbedmigratecandidatestypical {
  command <<<
    update_sort_bed_migrate_candidates_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}