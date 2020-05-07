version 1.0

task AnviDeleteState {
  input {
    String panPanOrProfileDb
    String stateState
    Boolean listListStates
  }
  command <<<
    anvi-delete-state \
      ~{if defined(panPanOrProfileDb) then ("--pan-or-profile-db " +  '"' + panPanOrProfileDb + '"') else ""} \
      ~{if defined(stateState) then ("--state " +  '"' + stateState + '"') else ""} \
      ~{true="--list-states" false="" listListStates}
  >>>
}