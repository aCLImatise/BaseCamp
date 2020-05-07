version 1.0

task Dlcpar {
  input {
    String streeStree
    String sSMap
    String lLMap
    String nNSamples
    String inputInputExt
    String outputOutputExt
    String dupDupCost
    String lossLossCost
    String coalCoalCost
    Boolean noNoPrescreen
    String prescreenPrescreenMin
    String prescreenPrescreenFactor
    Boolean maxMaxLoci
    Boolean maxMaxDups
    Boolean maxMaxLosses
    Boolean allowAllowBoth
    String seedSeed
    Boolean outputOutputFormat
    Boolean logLog
    String? dlcDlcPar
    String? isIs
    String? aA
    String? phylogeneticPhylogenetic
    String? programProgram
    String? forFor
    String? findingFinding
    String? theThe
    String? mostMost
    String? parsimoniousParsimonious
    String? geneGene
    String? treeTree
  }
  command <<<
    dlcpar \
      ~{dlcDlcPar} \
      ~{if defined(streeStree) then ("--stree " +  '"' + streeStree + '"') else ""} \
      ~{if defined(sSMap) then ("--smap " +  '"' + sSMap + '"') else ""} \
      ~{if defined(lLMap) then ("--lmap " +  '"' + lLMap + '"') else ""} \
      ~{if defined(nNSamples) then ("--nsamples " +  '"' + nNSamples + '"') else ""} \
      ~{if defined(inputInputExt) then ("--inputext " +  '"' + inputInputExt + '"') else ""} \
      ~{if defined(outputOutputExt) then ("--outputext " +  '"' + outputOutputExt + '"') else ""} \
      ~{if defined(dupDupCost) then ("--dupcost " +  '"' + dupDupCost + '"') else ""} \
      ~{if defined(lossLossCost) then ("--losscost " +  '"' + lossLossCost + '"') else ""} \
      ~{if defined(coalCoalCost) then ("--coalcost " +  '"' + coalCoalCost + '"') else ""} \
      ~{true="--no_prescreen" false="" noNoPrescreen} \
      ~{if defined(prescreenPrescreenMin) then ("--prescreen_min " +  '"' + prescreenPrescreenMin + '"') else ""} \
      ~{if defined(prescreenPrescreenFactor) then ("--prescreen_factor " +  '"' + prescreenPrescreenFactor + '"') else ""} \
      ~{true="--max_loci" false="" maxMaxLoci} \
      ~{true="--max_dups" false="" maxMaxDups} \
      ~{true="--max_losses" false="" maxMaxLosses} \
      ~{true="--allow_both" false="" allowAllowBoth} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--output_format" false="" outputOutputFormat} \
      ~{true="--log" false="" logLog} \
      ~{isIs} \
      ~{aA} \
      ~{phylogeneticPhylogenetic} \
      ~{programProgram} \
      ~{forFor} \
      ~{findingFinding} \
      ~{theThe} \
      ~{mostMost} \
      ~{parsimoniousParsimonious} \
      ~{geneGene} \
      ~{treeTree}
  >>>
}