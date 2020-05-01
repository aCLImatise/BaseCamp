version 1.0

task Transformseq {
  input {
    File finFin
    String formatFormatIn
    File fFOut
    String formatFormatOut
    Boolean segSeg
    String subsampleSubsample
    Boolean reverseReverse
    Boolean complementComplement
  }
  command <<<
    transformseq \
      ~{if defined(finFin) then ("--fin " +  '"' + finFin + '"') else ""} \
      ~{if defined(formatFormatIn) then ("--format-in " +  '"' + formatFormatIn + '"') else ""} \
      ~{if defined(fFOut) then ("--fout " +  '"' + fFOut + '"') else ""} \
      ~{if defined(formatFormatOut) then ("--format-out " +  '"' + formatFormatOut + '"') else ""} \
      ~{true="--seg" false="" segSeg} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--complement" false="" complementComplement}
  >>>
}