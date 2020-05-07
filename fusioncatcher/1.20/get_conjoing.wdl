version 1.0

task GetConjoing.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
  }
  command <<<
    get_conjoing.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}