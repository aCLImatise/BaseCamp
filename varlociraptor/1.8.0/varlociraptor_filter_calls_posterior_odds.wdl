version 1.0

task VarlociraptorFilterCallsPosteriorOdds {
  input {
    String? events
    String? odds
  }
  command <<<
    varlociraptor filter-calls posterior-odds \
      ~{if defined(events) then ("--events " +  '"' + events + '"') else ""} \
      ~{if defined(odds) then ("--odds " +  '"' + odds + '"') else ""}
  >>>
  parameter_meta {
    events: "...    Events to consider."
    odds: "Kass-Raftery score to filter against. [possible values: none, barely, positive, strong, very-strong]"
  }
}