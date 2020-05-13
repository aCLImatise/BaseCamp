version 1.0

task AlignmentSieve {
  input {
    File bamBam
    String outfileOutfile
    Int numberNumberOfProcessors
    File filterFilterMetrics
    String filteredFilteredOutReads
    String labelLabel
    Boolean smartSmartLabels
    Boolean verboseVerbose
    Array[String]+ shiftShift
    Boolean atacAtacShift
    Boolean bedBed
    Int minMinFragmentLength
    Int maxMaxFragmentLength
    String? alignmentAlignmentSievePy
    String? 1010
  }
  command <<<
    alignmentSieve \
      ~{alignmentAlignmentSievePy} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{if defined(filterFilterMetrics) then ("--filterMetrics " +  '"' + filterFilterMetrics + '"') else ""} \
      ~{if defined(filteredFilteredOutReads) then ("--filteredOutReads " +  '"' + filteredFilteredOutReads + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{true="--smartLabels" false="" smartSmartLabels} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(shiftShift) then ("--shift " +  '"' + shiftShift + '"') else ""} \
      ~{true="--ATACshift" false="" atacAtacShift} \
      ~{true="--BED" false="" bedBed} \
      ~{if defined(minMinFragmentLength) then ("--minFragmentLength " +  '"' + minMinFragmentLength + '"') else ""} \
      ~{if defined(maxMaxFragmentLength) then ("--maxFragmentLength " +  '"' + maxMaxFragmentLength + '"') else ""} \
      ~{1010}
  >>>
}