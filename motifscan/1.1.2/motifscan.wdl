version 1.0

task Motifscan {
  input {
    String peakPeak
    String formatFormat
    String motifMotif
    String genomeGenome
    String annotationAnnotation
    String motifMotifList
    Boolean noNoEnrichment
    String controlControl
    String cCFormat
    String rR
    String upstreamUpstream
    String downstreamDownstream
    String randomRandomTimes
    String peakPeakLength
    Boolean targetTargetSite
    String oO
  }
  command <<<
    motifscan \
      ~{if defined(peakPeak) then ("--peak " +  '"' + peakPeak + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(motifMotifList) then ("--motif_list " +  '"' + motifMotifList + '"') else ""} \
      ~{true="--no_enrichment" false="" noNoEnrichment} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(cCFormat) then ("--cformat " +  '"' + cCFormat + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(upstreamUpstream) then ("--upstream " +  '"' + upstreamUpstream + '"') else ""} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(randomRandomTimes) then ("--random_times " +  '"' + randomRandomTimes + '"') else ""} \
      ~{if defined(peakPeakLength) then ("--peak_length " +  '"' + peakPeakLength + '"') else ""} \
      ~{true="--target_site" false="" targetTargetSite} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}