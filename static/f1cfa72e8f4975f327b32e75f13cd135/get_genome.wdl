version 1.0

task GetGenome.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
    String serverServerPath
  }
  command <<<
    get_genome.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(serverServerPath) then ("--server-path " +  '"' + serverServerPath + '"') else ""}
  >>>
}