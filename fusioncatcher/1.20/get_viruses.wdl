version 1.0

task GetViruses.py {
  input {
    String outputOutput
    String serverServer
  }
  command <<<
    get_viruses.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}