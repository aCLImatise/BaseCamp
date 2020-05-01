version 1.0

task KatDistanalysis {
  input {
    String outputOutputPrefix
    String formatFormat
    String cnsCns
    String freqFreqCutOff
    Int minMinElem
    Boolean plotPlot
    String homozygousHomozygousPeak
    Boolean haploidHaploid
    Boolean verboseVerbose
    String? inputInput
  }
  command <<<
    kat_distanalysis \
      ~{inputInput} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(cnsCns) then ("--cns " +  '"' + cnsCns + '"') else ""} \
      ~{if defined(freqFreqCutOff) then ("--freq_cutoff " +  '"' + freqFreqCutOff + '"') else ""} \
      ~{if defined(minMinElem) then ("--min_elem " +  '"' + minMinElem + '"') else ""} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(homozygousHomozygousPeak) then ("--homozygous_peak " +  '"' + homozygousHomozygousPeak + '"') else ""} \
      ~{true="--haploid" false="" haploidHaploid} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}