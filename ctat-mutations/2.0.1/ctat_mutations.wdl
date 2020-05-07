version 1.0

task CtatMutations {
  input {
    String leftLeft
    String rightRight
    String outOutDir
    String referenceReference
    String indexIndex
    String dbsnpDbsnpVcf
    String threadsThreads
    String variantVariantFilteringMode
    String variantVariantCallMode
    String refRefBed
    Boolean plotPlot
    String cosmicCosmicVcfGz
    Boolean noNoFilterRnaEditing
    String tissueTissueType
    String emailEmail
    Boolean wdlWdlCompatibleRun
    String cravatCravatAnnotationHeader
    String bamBam
    String alignmentAlignmentMode
    Boolean baseBaseDepth
    String starStarMemory
    Boolean debugDebug
    String genomeGenomeLibDir
    Boolean skipSkipCravat
  }
  command <<<
    ctat_mutations \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(dbsnpDbsnpVcf) then ("--dbsnp_vcf " +  '"' + dbsnpDbsnpVcf + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(variantVariantFilteringMode) then ("--variant_filtering_mode " +  '"' + variantVariantFilteringMode + '"') else ""} \
      ~{if defined(variantVariantCallMode) then ("--variant_call_mode " +  '"' + variantVariantCallMode + '"') else ""} \
      ~{if defined(refRefBed) then ("--ref_bed " +  '"' + refRefBed + '"') else ""} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(cosmicCosmicVcfGz) then ("--cosmic_vcf_gz " +  '"' + cosmicCosmicVcfGz + '"') else ""} \
      ~{true="--no_filter_rna_editing" false="" noNoFilterRnaEditing} \
      ~{if defined(tissueTissueType) then ("--tissue_type " +  '"' + tissueTissueType + '"') else ""} \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{true="--wdl_compatible_run" false="" wdlWdlCompatibleRun} \
      ~{if defined(cravatCravatAnnotationHeader) then ("--cravat_annotation_header " +  '"' + cravatCravatAnnotationHeader + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(alignmentAlignmentMode) then ("--alignment_mode " +  '"' + alignmentAlignmentMode + '"') else ""} \
      ~{true="--base_depth" false="" baseBaseDepth} \
      ~{if defined(starStarMemory) then ("--star_memory " +  '"' + starStarMemory + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(genomeGenomeLibDir) then ("--genome_lib_dir " +  '"' + genomeGenomeLibDir + '"') else ""} \
      ~{true="--skip_cravat" false="" skipSkipCravat}
  >>>
}