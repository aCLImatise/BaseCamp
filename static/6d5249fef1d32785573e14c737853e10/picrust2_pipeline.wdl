version 1.0

task Picrust2Pipeline.py {
  input {
    File studyStudyFastA
    File inputInput
    File outputOutput
    String processesProcesses
    File refRefDir
    String inInTraits
    File customCustomTraitTables
    File markerMarkerGeneTable
    String pathwayPathwayMap
    String reactionReactionFunc
    Boolean noNoPathways
    String regroupRegroupMap
    Boolean noNoRegroup
    Boolean stratifiedStratified
    Float maxMaxNsti
    Int minMinReads
    Int minMinSamples
    String hspHspMethod
    Int minMinAlign
    Boolean skipSkipNsti
    Boolean skipSkipMinPath
    Boolean noNoGapFill
    Boolean coverageCoverage
    Boolean perPerSequenceContrib
    Boolean wideWideTable
    Boolean skipSkipNorm
    Boolean removeRemoveIntermediate
    Boolean verboseVerbose
  }
  command <<<
    picrust2_pipeline.py \
      ~{if defined(studyStudyFastA) then ("--study_fasta " +  '"' + studyStudyFastA + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(refRefDir) then ("--ref_dir " +  '"' + refRefDir + '"') else ""} \
      ~{if defined(inInTraits) then ("--in_traits " +  '"' + inInTraits + '"') else ""} \
      ~{if defined(customCustomTraitTables) then ("--custom_trait_tables " +  '"' + customCustomTraitTables + '"') else ""} \
      ~{if defined(markerMarkerGeneTable) then ("--marker_gene_table " +  '"' + markerMarkerGeneTable + '"') else ""} \
      ~{if defined(pathwayPathwayMap) then ("--pathway_map " +  '"' + pathwayPathwayMap + '"') else ""} \
      ~{if defined(reactionReactionFunc) then ("--reaction_func " +  '"' + reactionReactionFunc + '"') else ""} \
      ~{true="--no_pathways" false="" noNoPathways} \
      ~{if defined(regroupRegroupMap) then ("--regroup_map " +  '"' + regroupRegroupMap + '"') else ""} \
      ~{true="--no_regroup" false="" noNoRegroup} \
      ~{true="--stratified" false="" stratifiedStratified} \
      ~{if defined(maxMaxNsti) then ("--max_nsti " +  '"' + maxMaxNsti + '"') else ""} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(minMinSamples) then ("--min_samples " +  '"' + minMinSamples + '"') else ""} \
      ~{if defined(hspHspMethod) then ("--hsp_method " +  '"' + hspHspMethod + '"') else ""} \
      ~{if defined(minMinAlign) then ("--min_align " +  '"' + minMinAlign + '"') else ""} \
      ~{true="--skip_nsti" false="" skipSkipNsti} \
      ~{true="--skip_minpath" false="" skipSkipMinPath} \
      ~{true="--no_gap_fill" false="" noNoGapFill} \
      ~{true="--coverage" false="" coverageCoverage} \
      ~{true="--per_sequence_contrib" false="" perPerSequenceContrib} \
      ~{true="--wide_table" false="" wideWideTable} \
      ~{true="--skip_norm" false="" skipSkipNorm} \
      ~{true="--remove_intermediate" false="" removeRemoveIntermediate} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}