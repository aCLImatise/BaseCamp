version 1.0

task RibotricerDetectOrfs {
  input {
    String bamBam
    String ribotRibotRicerIndex
    String prefixPrefix
    Boolean strandedStranded
    String readReadLengths
    String pPSiteOffsets
    Float phasePhaseScoreCutOff
    Int minMinValidCodons
    Int minMinReadsPerCodon
    Float minMinValidCodonsRatio
    Float minMinReadDensity
    Boolean reportReportAll
  }
  command <<<
    ribotricer detect-orfs \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(ribotRibotRicerIndex) then ("--ribotricer_index " +  '"' + ribotRibotRicerIndex + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--stranded" false="" strandedStranded} \
      ~{if defined(readReadLengths) then ("--read_lengths " +  '"' + readReadLengths + '"') else ""} \
      ~{if defined(pPSiteOffsets) then ("--psite_offsets " +  '"' + pPSiteOffsets + '"') else ""} \
      ~{if defined(phasePhaseScoreCutOff) then ("--phase_score_cutoff " +  '"' + phasePhaseScoreCutOff + '"') else ""} \
      ~{if defined(minMinValidCodons) then ("--min_valid_codons " +  '"' + minMinValidCodons + '"') else ""} \
      ~{if defined(minMinReadsPerCodon) then ("--min_reads_per_codon " +  '"' + minMinReadsPerCodon + '"') else ""} \
      ~{if defined(minMinValidCodonsRatio) then ("--min_valid_codons_ratio " +  '"' + minMinValidCodonsRatio + '"') else ""} \
      ~{if defined(minMinReadDensity) then ("--min_read_density " +  '"' + minMinReadDensity + '"') else ""} \
      ~{true="--report_all" false="" reportReportAll}
  >>>
}