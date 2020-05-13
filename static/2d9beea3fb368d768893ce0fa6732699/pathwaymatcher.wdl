version 1.0

task Pathwaymatcher.pyMatchModifiedPeptides {
  input {
    String mappingMapping
    String fastFastA
    Boolean graphGraph
    Boolean graphGraphGene
    String graphGraphProteoForm
    Boolean graphGraphUniprot
    String inputInput
    String matchMatchType
    String outputOutput
    String rangeRange
    Boolean topTopLevelPathways
  }
  command <<<
    pathwaymatcher.py match-modified-peptides \
      ~{if defined(mappingMapping) then ("--mapping " +  '"' + mappingMapping + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--graph" false="" graphGraph} \
      ~{true="--graphGene" false="" graphGraphGene} \
      ~{if defined(graphGraphProteoForm) then ("--graphProteoform " +  '"' + graphGraphProteoForm + '"') else ""} \
      ~{true="--graphUniprot" false="" graphGraphUniprot} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(matchMatchType) then ("--matchType " +  '"' + matchMatchType + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{true="--topLevelPathways" false="" topTopLevelPathways}
  >>>
}