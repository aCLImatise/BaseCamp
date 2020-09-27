version 1.0

task PybelMachine {
  input {
    Boolean? local
    String? host
    String commons_dots_cai_dot_fraunhofer_dot_de
  }
  command <<<
    pybel machine \
      ~{commons_dots_cai_dot_fraunhofer_dot_de} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    local: "Upload to local database."
    host: "URL of BEL Commons. Defaults to https://bel-"
    commons_dots_cai_dot_fraunhofer_dot_de: "--help       Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}