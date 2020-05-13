version 1.0

task GetRefseqEnsembl.py {
  input {
    String organismOrganism
    String outputOutput
    String serverServer
  }
  command <<<
    get_refseq_ensembl.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}