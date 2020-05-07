version 1.0

task PauvreSynplot {
  input {
    Array[String]+ gffGffPaths
    Array[String]+ gffGffLabels
    Boolean noNoTimestamp
    Boolean optimumOptimumOrder
    String outputOutputBasename
    Array[String]+ ratioRatio
    Boolean sandwichSandwich
    Boolean startStartWithAlignedGenes
    Boolean stopStopCodons
    Boolean transparentTransparent
  }
  command <<<
    pauvre synplot \
      ~{if defined(gffGffPaths) then ("--gff_paths " +  '"' + gffGffPaths + '"') else ""} \
      ~{if defined(gffGffLabels) then ("--gff_labels " +  '"' + gffGffLabels + '"') else ""} \
      ~{true="--no_timestamp" false="" noNoTimestamp} \
      ~{true="--optimum_order" false="" optimumOptimumOrder} \
      ~{if defined(outputOutputBasename) then ("--output-basename " +  '"' + outputOutputBasename + '"') else ""} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{true="--sandwich" false="" sandwichSandwich} \
      ~{true="--start_with_aligned_genes" false="" startStartWithAlignedGenes} \
      ~{true="--stop_codons" false="" stopStopCodons} \
      ~{true="--transparent" false="" transparentTransparent}
  >>>
}