version 1.0

task EstimateReadFiltering {
  input {
    File bamBamFiles
    String outfileOutfile
    Array[String]+ sampleSampleLabels
    Boolean smartSmartLabels
    Int binsizeBinsize
    Int distanceDistanceBetweenBins
    Int numberNumberOfProcessors
    Boolean verboseVerbose
  }
  command <<<
    estimateReadFiltering \
      ~{if defined(bamBamFiles) then ("--bamfiles " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(sampleSampleLabels) then ("--sampleLabels " +  '"' + sampleSampleLabels + '"') else ""} \
      ~{true="--smartLabels" false="" smartSmartLabels} \
      ~{if defined(binsizeBinsize) then ("--binSize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(distanceDistanceBetweenBins) then ("--distanceBetweenBins " +  '"' + distanceDistanceBetweenBins + '"') else ""} \
      ~{if defined(numberNumberOfProcessors) then ("--numberOfProcessors " +  '"' + numberNumberOfProcessors + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}