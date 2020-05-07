version 1.0

task TrinityGeneSpliceModeler.py {
  input {
    String trinityTrinityFastA
    String outOutPrefix
    Boolean inclInclMalign
    Boolean debugDebug
    Boolean verboseVerbose
    Boolean noNoSqueeze
    Boolean noNoRefinement
    Boolean inclInclCdna
    Boolean inclInclDot
    String restrictRestrictGeneId
  }
  command <<<
    Trinity_gene_splice_modeler.py \
      ~{if defined(trinityTrinityFastA) then ("--trinity_fasta " +  '"' + trinityTrinityFastA + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out_prefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{true="--incl_malign" false="" inclInclMalign} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no_squeeze" false="" noNoSqueeze} \
      ~{true="--no_refinement" false="" noNoRefinement} \
      ~{true="--incl_cdna" false="" inclInclCdna} \
      ~{true="--incl_dot" false="" inclInclDot} \
      ~{if defined(restrictRestrictGeneId) then ("--restrict_gene_id " +  '"' + restrictRestrictGeneId + '"') else ""}
  >>>
}