version 1.0

task GetHla2.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
  }
  command <<<
    get_hla2.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}