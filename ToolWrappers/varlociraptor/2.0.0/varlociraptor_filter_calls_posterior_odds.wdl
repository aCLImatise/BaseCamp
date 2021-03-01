version 1.0

task VarlociraptorFiltercallsPosteriorodds {
  input {
    String? events
    String? odds
  }
  command <<<
    varlociraptor filter_calls posterior_odds \
      ~{if defined(events) then ("--events " +  '"' + events + '"') else ""} \
      ~{if defined(odds) then ("--odds " +  '"' + odds + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    events: "...    Events to consider."
    odds: "Kass-Raftery score to filter against. [possible values: none, barely, positive, strong,\\nvery-strong]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}