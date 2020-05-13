version 1.0

task VarlociraptorFilterCallsPosteriorOdds {
  input {
    String eventsEvents
    String oddsOdds
  }
  command <<<
    varlociraptor filter-calls posterior-odds \
      ~{if defined(eventsEvents) then ("--events " +  '"' + eventsEvents + '"') else ""} \
      ~{if defined(oddsOdds) then ("--odds " +  '"' + oddsOdds + '"') else ""}
  >>>
}