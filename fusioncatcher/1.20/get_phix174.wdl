version 1.0

task GetPhix174.py {
  input {
    String outputOutput
    String serverServer
  }
  command <<<
    get_phix174.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}