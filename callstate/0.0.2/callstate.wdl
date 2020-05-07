version 1.0

task Callstate {
  input {
    String threadsThreads
    String outputOutput
    String baseBaseDepthOutput
    String minMinBaseQual
    String minMinMapq
    String minMinDepth
    String maxMaxLowMapq
    String maxMaxDepth
    String minMinDepthLowMapq
    String lowLowMapqFrac
    String flagFlag
    String? bedBed
    String? bamBam
  }
  command <<<
    callstate \
      ~{bedBed} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(baseBaseDepthOutput) then ("--base-depth-output " +  '"' + baseBaseDepthOutput + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(maxMaxLowMapq) then ("--max-low-mapq " +  '"' + maxMaxLowMapq + '"') else ""} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(minMinDepthLowMapq) then ("--min-depth-low-mapq " +  '"' + minMinDepthLowMapq + '"') else ""} \
      ~{if defined(lowLowMapqFrac) then ("--low-mapq-frac " +  '"' + lowLowMapqFrac + '"') else ""} \
      ~{if defined(flagFlag) then ("--flag " +  '"' + flagFlag + '"') else ""} \
      ~{bamBam}
  >>>
}