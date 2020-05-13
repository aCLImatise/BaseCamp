version 1.0

task AnviExportState {
  input {
    String panPanOrProfileDb
    File outputOutputFile
    String stateState
    Boolean listListStates
  }
  command <<<
    anvi-export-state \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(stateState) then ("--state " +  '"' + stateState + '"') else ""} \
      ~{true="--list-states" false="" listListStates}
  >>>
}