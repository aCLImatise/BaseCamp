version 1.0

task AnviComputeGenomeSimilarity {
  input {
    File internalInternalGenomes
    File externalExternalGenomes
    String fastFastATextFile
    String outputOutputDir
    String panPanDb
    String programProgram
    String fastFastAniKmErSize
    String fragmentFragmentLength
    Int minMinNumFragments
    String methodMethod
    String minMinAlignmentFraction
    Int significantSignificantAlignmentLength
    String minMinFullPercentIdentity
    Int kmKmErSize
    Int scaleScale
    String distanceDistance
    String linkageLinkage
    String numNumThreads
    Boolean justJustDoIt
    File logLogFile
  }
  command <<<
    anvi-compute-genome-similarity \
      ~{if defined(internalInternalGenomes) then ("--internal-genomes " +  '"' + internalInternalGenomes + '"') else ""} \
      ~{if defined(externalExternalGenomes) then ("--external-genomes " +  '"' + externalExternalGenomes + '"') else ""} \
      ~{if defined(fastFastATextFile) then ("--fasta-text-file " +  '"' + fastFastATextFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(programProgram) then ("--program " +  '"' + programProgram + '"') else ""} \
      ~{if defined(fastFastAniKmErSize) then ("--fastani-kmer-size " +  '"' + fastFastAniKmErSize + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragment-length " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(minMinNumFragments) then ("--min-num-fragments " +  '"' + minMinNumFragments + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(minMinAlignmentFraction) then ("--min-alignment-fraction " +  '"' + minMinAlignmentFraction + '"') else ""} \
      ~{if defined(significantSignificantAlignmentLength) then ("--significant-alignment-length " +  '"' + significantSignificantAlignmentLength + '"') else ""} \
      ~{if defined(minMinFullPercentIdentity) then ("--min-full-percent-identity " +  '"' + minMinFullPercentIdentity + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}