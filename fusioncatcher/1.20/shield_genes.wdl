version 1.0

task ShieldGenes.py {
  input {
    String organismOrganism
    String outputOutput
    String readReadLen
    Boolean pseudoPseudoGenesCheck
    Boolean useUseSynonyms
  }
  command <<<
    shield_genes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(readReadLen) then ("--read-len " +  '"' + readReadLen + '"') else ""} \
      ~{true="--pseudo-genes-check" false="" pseudoPseudoGenesCheck} \
      ~{true="--use-synonyms" false="" useUseSynonyms}
  >>>
}