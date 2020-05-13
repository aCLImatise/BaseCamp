version 1.0

task GetCgp.py {
  input {
    String organismOrganism
    String outputOutput
    String tsv1Tsv1
    String tsv2Tsv2
    String serverServer
  }
  command <<<
    get_cgp.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(tsv1Tsv1) then ("--tsv1 " +  '"' + tsv1Tsv1 + '"') else ""} \
      ~{if defined(tsv2Tsv2) then ("--tsv2 " +  '"' + tsv2Tsv2 + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}