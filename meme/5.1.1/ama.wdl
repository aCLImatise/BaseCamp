version 1.0

task Ama {
  input {
    String sSDbg
    String motifMotif
    Float motifMotifPseudo
    Boolean norcNorc
    Boolean scoringScoring
    Boolean rmaRma
    Boolean pPValues
    String gcGcBins
    Boolean csCs
    Boolean oOFormat
    Directory oO
    Directory ocOc
    Boolean verbosityVerbosity
    Int maxMaxSeqLength
    Int lastLast
  }
  command <<<
    ama \
      ~{if defined(sSDbg) then ("--sdbg " +  '"' + sSDbg + '"') else ""} \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(motifMotifPseudo) then ("--motif-pseudo " +  '"' + motifMotifPseudo + '"') else ""} \
      ~{true="--norc" false="" norcNorc} \
      ~{true="--scoring" false="" scoringScoring} \
      ~{true="--rma" false="" rmaRma} \
      ~{true="--pvalues" false="" pPValues} \
      ~{if defined(gcGcBins) then ("--gcbins " +  '"' + gcGcBins + '"') else ""} \
      ~{true="--cs" false="" csCs} \
      ~{true="--o-format" false="" oOFormat} \
      ~{if defined(oO) then ("--o " +  '"' + oO + '"') else ""} \
      ~{if defined(ocOc) then ("--oc " +  '"' + ocOc + '"') else ""} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(maxMaxSeqLength) then ("--max-seq-length " +  '"' + maxMaxSeqLength + '"') else ""} \
      ~{if defined(lastLast) then ("--last " +  '"' + lastLast + '"') else ""}
  >>>
}