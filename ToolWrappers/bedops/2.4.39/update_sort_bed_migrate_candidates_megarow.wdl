version 1.0

task Updatesortbedmigratecandidatesmegarow {
  command <<<
    update_sort_bed_migrate_candidates_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}