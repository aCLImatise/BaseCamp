version 1.0

task Cnvpytor {
  input {
    Boolean styleStyle
    String plotPlotOutputFile
    String animationAnimation
    Boolean makeMakeGcGenomeFile
    Boolean makeMakeMaskGenomeFile
    Boolean useUseMaskWithRd
    Boolean noNoGcCorr
    String referenceReferenceGenome
    String vcfVcfSample
    String referenceReferenceGenomesConf
    Boolean lsLs
    Boolean infoInfo
    Boolean compComp
    Boolean genotypeGenotype
    Boolean metadataMetadata
    Boolean exportExport
  }
  command <<<
    cnvpytor \
      ~{true="-style" false="" styleStyle} \
      ~{if defined(plotPlotOutputFile) then ("--plot_output_file " +  '"' + plotPlotOutputFile + '"') else ""} \
      ~{if defined(animationAnimation) then ("--animation " +  '"' + animationAnimation + '"') else ""} \
      ~{true="--make_gc_genome_file" false="" makeMakeGcGenomeFile} \
      ~{true="--make_mask_genome_file" false="" makeMakeMaskGenomeFile} \
      ~{true="--use_mask_with_rd" false="" useUseMaskWithRd} \
      ~{true="--no_gc_corr" false="" noNoGcCorr} \
      ~{if defined(referenceReferenceGenome) then ("--reference_genome " +  '"' + referenceReferenceGenome + '"') else ""} \
      ~{if defined(vcfVcfSample) then ("--vcf_sample " +  '"' + vcfVcfSample + '"') else ""} \
      ~{if defined(referenceReferenceGenomesConf) then ("--reference_genomes_conf " +  '"' + referenceReferenceGenomesConf + '"') else ""} \
      ~{true="--ls" false="" lsLs} \
      ~{true="-info" false="" infoInfo} \
      ~{true="-comp" false="" compComp} \
      ~{true="-genotype" false="" genotypeGenotype} \
      ~{true="--metadata" false="" metadataMetadata} \
      ~{true="-export" false="" exportExport}
  >>>
}