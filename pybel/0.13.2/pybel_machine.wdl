version 1.0

task PybelMachine {
  input {
    Boolean? local
    String? host
    String? agents
  }
  command <<<
    pybel machine \
      ~{agents} \
      ~{true="--local" false="" local} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    local: "Upload to local database."
    host: "URL of BEL Commons. Defaults to https://bel- commons.scai.fraunhofer.de"
    agents: ""
  }
}