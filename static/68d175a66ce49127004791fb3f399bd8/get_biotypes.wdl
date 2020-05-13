version 1.0

task GetBiotypes.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
    String serverServerPath
  }
  command <<<
    get_biotypes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(serverServerPath) then ("--server-path " +  '"' + serverServerPath + '"') else ""}
  >>>
}