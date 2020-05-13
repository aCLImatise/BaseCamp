version 1.0

task GetSynonyms.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServerPath
    String serverServer
  }
  command <<<
    get_synonyms.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServerPath) then ("--server-path " +  '"' + serverServerPath + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}