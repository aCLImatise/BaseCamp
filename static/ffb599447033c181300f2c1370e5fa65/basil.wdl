version 1.0

task Basil {
  input {
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String inputInputReference
    String inputInputMapping
    String outOutVcf
    File outputOutputDebugDir
    String fragmentFragmentSizeFactor
    String autoAutoLibraryNumRecords
    Int fragmentFragmentSizeMedian
    String fragmentFragmentSizeStdDev
    String fragmentFragmentDefaultOrientation
    String filterFilterMaxCoverage
    String filterFilterMinAlnQuality
    String outOutVariationType
    String outOutIndividualName
    String clippingClippingWindowRadius
    String maxMaxAlignmentLength
    String clippingClippingMinLength
    String clippingClippingMinCoverage
    String oeaOeaClusterSelection
    String oeaOeaMinSupport
    String oeaOeaMinSupportEachSide
    String realignmentRealignmentNumThreads
    String breakpointBreakpointWindowRadius
  }
  command <<<
    basil \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(inputInputReference) then ("--input-reference " +  '"' + inputInputReference + '"') else ""} \
      ~{if defined(inputInputMapping) then ("--input-mapping " +  '"' + inputInputMapping + '"') else ""} \
      ~{if defined(outOutVcf) then ("--out-vcf " +  '"' + outOutVcf + '"') else ""} \
      ~{if defined(outputOutputDebugDir) then ("--output-debug-dir " +  '"' + outputOutputDebugDir + '"') else ""} \
      ~{if defined(fragmentFragmentSizeFactor) then ("--fragment-size-factor " +  '"' + fragmentFragmentSizeFactor + '"') else ""} \
      ~{if defined(autoAutoLibraryNumRecords) then ("--auto-library-num-records " +  '"' + autoAutoLibraryNumRecords + '"') else ""} \
      ~{if defined(fragmentFragmentSizeMedian) then ("--fragment-size-median " +  '"' + fragmentFragmentSizeMedian + '"') else ""} \
      ~{if defined(fragmentFragmentSizeStdDev) then ("--fragment-size-std-dev " +  '"' + fragmentFragmentSizeStdDev + '"') else ""} \
      ~{if defined(fragmentFragmentDefaultOrientation) then ("--fragment-default-orientation " +  '"' + fragmentFragmentDefaultOrientation + '"') else ""} \
      ~{if defined(filterFilterMaxCoverage) then ("--filter-max-coverage " +  '"' + filterFilterMaxCoverage + '"') else ""} \
      ~{if defined(filterFilterMinAlnQuality) then ("--filter-min-aln-quality " +  '"' + filterFilterMinAlnQuality + '"') else ""} \
      ~{if defined(outOutVariationType) then ("--out-variation-type " +  '"' + outOutVariationType + '"') else ""} \
      ~{if defined(outOutIndividualName) then ("--out-individual-name " +  '"' + outOutIndividualName + '"') else ""} \
      ~{if defined(clippingClippingWindowRadius) then ("--clipping-window-radius " +  '"' + clippingClippingWindowRadius + '"') else ""} \
      ~{if defined(maxMaxAlignmentLength) then ("--max-alignment-length " +  '"' + maxMaxAlignmentLength + '"') else ""} \
      ~{if defined(clippingClippingMinLength) then ("--clipping-min-length " +  '"' + clippingClippingMinLength + '"') else ""} \
      ~{if defined(clippingClippingMinCoverage) then ("--clipping-min-coverage " +  '"' + clippingClippingMinCoverage + '"') else ""} \
      ~{if defined(oeaOeaClusterSelection) then ("--oea-cluster-selection " +  '"' + oeaOeaClusterSelection + '"') else ""} \
      ~{if defined(oeaOeaMinSupport) then ("--oea-min-support " +  '"' + oeaOeaMinSupport + '"') else ""} \
      ~{if defined(oeaOeaMinSupportEachSide) then ("--oea-min-support-each-side " +  '"' + oeaOeaMinSupportEachSide + '"') else ""} \
      ~{if defined(realignmentRealignmentNumThreads) then ("--realignment-num-threads " +  '"' + realignmentRealignmentNumThreads + '"') else ""} \
      ~{if defined(breakpointBreakpointWindowRadius) then ("--breakpoint-window-radius " +  '"' + breakpointBreakpointWindowRadius + '"') else ""}
  >>>
}