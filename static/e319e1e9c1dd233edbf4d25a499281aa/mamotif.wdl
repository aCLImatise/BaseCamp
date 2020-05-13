version 1.0

task Mamotif {
  input {
    String p1P1
    String p2P2
    String r1R1
    String r2R2
    String s1S1
    String s2S2
    String motifMotif
    String genomeGenome
    String annotationAnnotation
    String wW
    String dD
    String nN
    String pP
    String mMCutOff
    String motifMotifList
    Boolean noNoEnrichment
    String rR
    String upstreamUpstream
    String downstreamDownstream
    String randomRandomTimes
    String peakPeakLength
    Boolean negativeNegative
    String correctionCorrection
    Boolean sS
    String oO
  }
  command <<<
    mamotif \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("--p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(r1R1) then ("--r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--r2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(s1S1) then ("--s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("--s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mMCutOff) then ("--m_cutoff " +  '"' + mMCutOff + '"') else ""} \
      ~{if defined(motifMotifList) then ("--motif_list " +  '"' + motifMotifList + '"') else ""} \
      ~{true="--no_enrichment" false="" noNoEnrichment} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(upstreamUpstream) then ("--upstream " +  '"' + upstreamUpstream + '"') else ""} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(randomRandomTimes) then ("--random_times " +  '"' + randomRandomTimes + '"') else ""} \
      ~{if defined(peakPeakLength) then ("--peak_length " +  '"' + peakPeakLength + '"') else ""} \
      ~{true="--negative" false="" negativeNegative} \
      ~{if defined(correctionCorrection) then ("--correction " +  '"' + correctionCorrection + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}