version 1.0

task SvimAsmHaploid {
  input {
    Int minMinMapq
    Int minMinSvSize
    Int maxMaxSvSize
    String queryQueryGapTolerance
    String queryQueryOverlapTolerance
    String referenceReferenceGapTolerance
    String referenceReferenceOverlapTolerance
    String sampleSample
    String typesTypes
    Boolean symbolicSymbolicAlleles
    Boolean duplicationsDuplicationsAsInsertions
    Boolean queryQueryNames
    String? workingWorkingDir
    String? bamBamFile
    String? genomeGenome
  }
  command <<<
    svim-asm haploid \
      ~{workingWorkingDir} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinSvSize) then ("--min_sv_size " +  '"' + minMinSvSize + '"') else ""} \
      ~{if defined(maxMaxSvSize) then ("--max_sv_size " +  '"' + maxMaxSvSize + '"') else ""} \
      ~{if defined(queryQueryGapTolerance) then ("--query_gap_tolerance " +  '"' + queryQueryGapTolerance + '"') else ""} \
      ~{if defined(queryQueryOverlapTolerance) then ("--query_overlap_tolerance " +  '"' + queryQueryOverlapTolerance + '"') else ""} \
      ~{if defined(referenceReferenceGapTolerance) then ("--reference_gap_tolerance " +  '"' + referenceReferenceGapTolerance + '"') else ""} \
      ~{if defined(referenceReferenceOverlapTolerance) then ("--reference_overlap_tolerance " +  '"' + referenceReferenceOverlapTolerance + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{true="--symbolic_alleles" false="" symbolicSymbolicAlleles} \
      ~{true="--duplications_as_insertions" false="" duplicationsDuplicationsAsInsertions} \
      ~{true="--query_names" false="" queryQueryNames} \
      ~{bamBamFile} \
      ~{genomeGenome}
  >>>
}