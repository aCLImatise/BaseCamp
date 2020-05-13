version 1.0

task PlanemoPullRequestOPTIONSPROJECT {
  input {
    String messageMessage
  }
  command <<<
    planemo pull_request OPTIONS PROJECT \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""}
  >>>
}