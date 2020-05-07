version 1.0

task OverlapSelect {
  input {
    File droppedDropped
    String verboseVerbose
  }
  command <<<
    overlapSelect \
      ~{if defined(droppedDropped) then ("-dropped " +  '"' + droppedDropped + '"') else ""} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}