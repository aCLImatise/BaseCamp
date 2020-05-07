version 1.0

task AnviDereplicateGenomes {
  input {
    File internalInternalGenomes
    File externalExternalGenomes
    String fastFastATextFile
    File aniAniDir
    File mashMashDir
    String outputOutputDir
    Boolean skipSkipFastAReport
    Boolean reportReportAll
    String programProgram
    String fastFastAniKmErSize
    String fragmentFragmentLength
    Int minMinFraction
    String methodMethod
    String minMinAlignmentFraction
    Int significantSignificantAlignmentLength
    Boolean useUseFullPercentIdentity
    String minMinFullPercentIdentity
    Int kmKmErSize
    Int scaleScale
    String similaritySimilarityThreshold
    String clusterClusterMethod
    String representativeRepresentativeMethod
    String numNumThreads
    Boolean justJustDoIt
    File logLogFile
  }
  command <<<
    anvi-dereplicate-genomes \
      ~{if defined(internalInternalGenomes) then ("--internal-genomes " +  '"' + internalInternalGenomes + '"') else ""} \
      ~{if defined(externalExternalGenomes) then ("--external-genomes " +  '"' + externalExternalGenomes + '"') else ""} \
      ~{if defined(fastFastATextFile) then ("--fasta-text-file " +  '"' + fastFastATextFile + '"') else ""} \
      ~{if defined(aniAniDir) then ("--ani-dir " +  '"' + aniAniDir + '"') else ""} \
      ~{if defined(mashMashDir) then ("--mash-dir " +  '"' + mashMashDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--skip-fasta-report" false="" skipSkipFastAReport} \
      ~{true="--report-all" false="" reportReportAll} \
      ~{if defined(programProgram) then ("--program " +  '"' + programProgram + '"') else ""} \
      ~{if defined(fastFastAniKmErSize) then ("--fastani-kmer-size " +  '"' + fastFastAniKmErSize + '"') else ""} \
      ~{if defined(fragmentFragmentLength) then ("--fragment-length " +  '"' + fragmentFragmentLength + '"') else ""} \
      ~{if defined(minMinFraction) then ("--min-fraction " +  '"' + minMinFraction + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(minMinAlignmentFraction) then ("--min-alignment-fraction " +  '"' + minMinAlignmentFraction + '"') else ""} \
      ~{if defined(significantSignificantAlignmentLength) then ("--significant-alignment-length " +  '"' + significantSignificantAlignmentLength + '"') else ""} \
      ~{true="--use-full-percent-identity" false="" useUseFullPercentIdentity} \
      ~{if defined(minMinFullPercentIdentity) then ("--min-full-percent-identity " +  '"' + minMinFullPercentIdentity + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmer-size " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(similaritySimilarityThreshold) then ("--similarity-threshold " +  '"' + similaritySimilarityThreshold + '"') else ""} \
      ~{if defined(clusterClusterMethod) then ("--cluster-method " +  '"' + clusterClusterMethod + '"') else ""} \
      ~{if defined(representativeRepresentativeMethod) then ("--representative-method " +  '"' + representativeRepresentativeMethod + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}