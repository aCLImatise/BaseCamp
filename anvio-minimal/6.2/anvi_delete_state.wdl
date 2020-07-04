version 1.0

task AnviDeleteState {
  input {
    Boolean? list_states
    String? p
    String? s
  }
  command <<<
    anvi-delete-state \
      ~{true="--list-states" false="" list_states} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    list_states: "Show available states and exit."
    p: ""
    s: ""
  }
}