version 1.0

task TripailleJobAddImportJob {
  input {
    Int priorityPriority
  }
  command <<<
    tripaille job add_import_job \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""}
  >>>
}