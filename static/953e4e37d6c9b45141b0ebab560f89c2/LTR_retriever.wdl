version 1.0

task LTRRetriever {
  input {
    String genomeGenome
    String inInHarvest
  }
  command <<<
    LTR_retriever \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(inInHarvest) then ("-inharvest " +  '"' + inInHarvest + '"') else ""}
  >>>
}