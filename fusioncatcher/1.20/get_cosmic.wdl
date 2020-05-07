version 1.0

task GetCosmic.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
    String dataData
  }
  command <<<
    get_cosmic.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""}
  >>>
}