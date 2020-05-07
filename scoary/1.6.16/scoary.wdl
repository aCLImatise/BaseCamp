version 1.0

task Scoary {
  input {
    String traitsTraits
    String genesGenes
    String newickNewickTree
    String startStartCol
    String delimiterDelimiter
    String restrictRestrictTo
    String outdirOutdir
    Boolean upgmaUpgmaTree
    Array[String]+ pPValueCutOff
    Boolean cC
    Int maxMaxHits
    String includeIncludeInputColumns
    Boolean writeWriteReduced
    Boolean noNoTime
    String permutePermute
    Boolean noNoPairwise
    Boolean collapseCollapse
    String threadsThreads
    Boolean testTest
    Boolean citationCitation
  }
  command <<<
    scoary \
      ~{if defined(traitsTraits) then ("--traits " +  '"' + traitsTraits + '"') else ""} \
      ~{if defined(genesGenes) then ("--genes " +  '"' + genesGenes + '"') else ""} \
      ~{if defined(newickNewickTree) then ("--newicktree " +  '"' + newickNewickTree + '"') else ""} \
      ~{if defined(startStartCol) then ("--start_col " +  '"' + startStartCol + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(restrictRestrictTo) then ("--restrict_to " +  '"' + restrictRestrictTo + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--upgma_tree" false="" upgmaUpgmaTree} \
      ~{if defined(pPValueCutOff) then ("--p_value_cutoff " +  '"' + pPValueCutOff + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(maxMaxHits) then ("--max_hits " +  '"' + maxMaxHits + '"') else ""} \
      ~{if defined(includeIncludeInputColumns) then ("--include_input_columns " +  '"' + includeIncludeInputColumns + '"') else ""} \
      ~{true="--write_reduced" false="" writeWriteReduced} \
      ~{true="--no-time" false="" noNoTime} \
      ~{if defined(permutePermute) then ("--permute " +  '"' + permutePermute + '"') else ""} \
      ~{true="--no_pairwise" false="" noNoPairwise} \
      ~{true="--collapse" false="" collapseCollapse} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{true="--citation" false="" citationCitation}
  >>>
}