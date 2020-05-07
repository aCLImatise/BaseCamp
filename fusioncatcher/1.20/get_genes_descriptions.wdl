version 1.0

task GetGenesDescriptions.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
  }
  command <<<
    get_genes_descriptions.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}