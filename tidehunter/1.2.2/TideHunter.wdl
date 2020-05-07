version 1.0

task TideHunter {
  input {
    Boolean kmKmErLength
    Boolean windowWindowSize
    Boolean stepStepSize
    Boolean hpcHpcKmEr
    Boolean minMinCopy
    Boolean maxMaxDiverG
    Boolean minMinPeriod
    Boolean maxMaxPeriod
    Boolean adaAdaMatRat
    Boolean consConsOut
    Boolean longestLongest
    Boolean fullFullLen
    Boolean outOutFmt
    Boolean threadThread
  }
  command <<<
    TideHunter \
      ~{true="--kmer-length" false="" kmKmErLength} \
      ~{true="--window-size" false="" windowWindowSize} \
      ~{true="--step-size" false="" stepStepSize} \
      ~{true="--HPC-kmer" false="" hpcHpcKmEr} \
      ~{true="--min-copy" false="" minMinCopy} \
      ~{true="--max-diverg" false="" maxMaxDiverG} \
      ~{true="--min-period" false="" minMinPeriod} \
      ~{true="--max-period" false="" maxMaxPeriod} \
      ~{true="--ada-mat-rat" false="" adaAdaMatRat} \
      ~{true="--cons-out" false="" consConsOut} \
      ~{true="--longest" false="" longestLongest} \
      ~{true="--full-len" false="" fullFullLen} \
      ~{true="--out-fmt" false="" outOutFmt} \
      ~{true="--thread" false="" threadThread}
  >>>
}