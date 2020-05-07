version 1.0

task GatRun.py {
  input {
    String annotationAnnotationBedFile
    String segmentSegmentBedFile
    String workspaceWorkspaceBedFile
    String isoIsoChoreBedFile
    String sampleSampleFile
    String inputInputCountsFile
    String inputInputResultsFile
    Boolean ignoreIgnoreSegmentTracks
    Boolean withWithSegmentTracks
    Boolean enableEnableSplitTracks
    Boolean overlappingOverlappingAnnotations
    String annotationsAnnotationsLabel
    String annotationsAnnotationsToPoints
    String orderOrder
    String outputOutputTablesPattern
    String outputOutputCountsPattern
    String outputOutputPlotsPattern
    String outputOutputSamplesPattern
    String outputOutputStats
    String outputOutputBed
    String descriptionsDescriptions
    String counterCounter
    String samplerSampler
    String numNumSamples
    String shiftShiftExtension
    String shiftShiftExpansion
    String bucketBucketSize
    String nNBuckets
    String pPValueMethod
    String qQValueMethod
    String qQValueLambda
    String qQValuePi0Method
    String pseudoPseudoCount
    String nullNull
    String cacheCache
    String numNumThreads
    String randomRandomSeed
    String conditionalConditional
    String conditionalConditionalExtension
    String conditionalConditionalExpansion
    Boolean restrictRestrictWorkspace
    Boolean truncateTruncateWorkspaceToAnnotations
    Boolean truncateTruncateSegmentsToWorkspace
    String timeTimeIt
    String timeTimeItName
    Boolean timeTimeItHeader
    String outputOutputFilenamePattern
    Boolean forceForceOutput
    File stdinStdin
    File logLog
    File errorError
    File stdoutStdout
    String? gatGatRun
    String? genomicGenomic
    String? annotationAnnotation
    String? toolTool
  }
  command <<<
    gat-run.py \
      ~{gatGatRun} \
      ~{if defined(annotationAnnotationBedFile) then ("--annotation-bed-file " +  '"' + annotationAnnotationBedFile + '"') else ""} \
      ~{if defined(segmentSegmentBedFile) then ("--segment-bed-file " +  '"' + segmentSegmentBedFile + '"') else ""} \
      ~{if defined(workspaceWorkspaceBedFile) then ("--workspace-bed-file " +  '"' + workspaceWorkspaceBedFile + '"') else ""} \
      ~{if defined(isoIsoChoreBedFile) then ("--isochore-bed-file " +  '"' + isoIsoChoreBedFile + '"') else ""} \
      ~{if defined(sampleSampleFile) then ("--sample-file " +  '"' + sampleSampleFile + '"') else ""} \
      ~{if defined(inputInputCountsFile) then ("--input-counts-file " +  '"' + inputInputCountsFile + '"') else ""} \
      ~{if defined(inputInputResultsFile) then ("--input-results-file " +  '"' + inputInputResultsFile + '"') else ""} \
      ~{true="--ignore-segment-tracks" false="" ignoreIgnoreSegmentTracks} \
      ~{true="--with-segment-tracks" false="" withWithSegmentTracks} \
      ~{true="--enable-split-tracks" false="" enableEnableSplitTracks} \
      ~{true="--overlapping-annotations" false="" overlappingOverlappingAnnotations} \
      ~{if defined(annotationsAnnotationsLabel) then ("--annotations-label " +  '"' + annotationsAnnotationsLabel + '"') else ""} \
      ~{if defined(annotationsAnnotationsToPoints) then ("--annotations-to-points " +  '"' + annotationsAnnotationsToPoints + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(outputOutputTablesPattern) then ("--output-tables-pattern " +  '"' + outputOutputTablesPattern + '"') else ""} \
      ~{if defined(outputOutputCountsPattern) then ("--output-counts-pattern " +  '"' + outputOutputCountsPattern + '"') else ""} \
      ~{if defined(outputOutputPlotsPattern) then ("--output-plots-pattern " +  '"' + outputOutputPlotsPattern + '"') else ""} \
      ~{if defined(outputOutputSamplesPattern) then ("--output-samples-pattern " +  '"' + outputOutputSamplesPattern + '"') else ""} \
      ~{if defined(outputOutputStats) then ("--output-stats " +  '"' + outputOutputStats + '"') else ""} \
      ~{if defined(outputOutputBed) then ("--output-bed " +  '"' + outputOutputBed + '"') else ""} \
      ~{if defined(descriptionsDescriptions) then ("--descriptions " +  '"' + descriptionsDescriptions + '"') else ""} \
      ~{if defined(counterCounter) then ("--counter " +  '"' + counterCounter + '"') else ""} \
      ~{if defined(samplerSampler) then ("--sampler " +  '"' + samplerSampler + '"') else ""} \
      ~{if defined(numNumSamples) then ("--num-samples " +  '"' + numNumSamples + '"') else ""} \
      ~{if defined(shiftShiftExtension) then ("--shift-extension " +  '"' + shiftShiftExtension + '"') else ""} \
      ~{if defined(shiftShiftExpansion) then ("--shift-expansion " +  '"' + shiftShiftExpansion + '"') else ""} \
      ~{if defined(bucketBucketSize) then ("--bucket-size " +  '"' + bucketBucketSize + '"') else ""} \
      ~{if defined(nNBuckets) then ("--nbuckets " +  '"' + nNBuckets + '"') else ""} \
      ~{if defined(pPValueMethod) then ("--pvalue-method " +  '"' + pPValueMethod + '"') else ""} \
      ~{if defined(qQValueMethod) then ("--qvalue-method " +  '"' + qQValueMethod + '"') else ""} \
      ~{if defined(qQValueLambda) then ("--qvalue-lambda " +  '"' + qQValueLambda + '"') else ""} \
      ~{if defined(qQValuePi0Method) then ("--qvalue-pi0-method " +  '"' + qQValuePi0Method + '"') else ""} \
      ~{if defined(pseudoPseudoCount) then ("--pseudo-count " +  '"' + pseudoPseudoCount + '"') else ""} \
      ~{if defined(nullNull) then ("--null " +  '"' + nullNull + '"') else ""} \
      ~{if defined(cacheCache) then ("--cache " +  '"' + cacheCache + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(conditionalConditional) then ("--conditional " +  '"' + conditionalConditional + '"') else ""} \
      ~{if defined(conditionalConditionalExtension) then ("--conditional-extension " +  '"' + conditionalConditionalExtension + '"') else ""} \
      ~{if defined(conditionalConditionalExpansion) then ("--conditional-expansion " +  '"' + conditionalConditionalExpansion + '"') else ""} \
      ~{true="--restrict-workspace" false="" restrictRestrictWorkspace} \
      ~{true="--truncate-workspace-to-annotations" false="" truncateTruncateWorkspaceToAnnotations} \
      ~{true="--truncate-segments-to-workspace" false="" truncateTruncateSegmentsToWorkspace} \
      ~{if defined(timeTimeIt) then ("--timeit " +  '"' + timeTimeIt + '"') else ""} \
      ~{if defined(timeTimeItName) then ("--timeit-name " +  '"' + timeTimeItName + '"') else ""} \
      ~{true="--timeit-header" false="" timeTimeItHeader} \
      ~{if defined(outputOutputFilenamePattern) then ("--output-filename-pattern " +  '"' + outputOutputFilenamePattern + '"') else ""} \
      ~{true="--force-output" false="" forceForceOutput} \
      ~{if defined(stdinStdin) then ("--stdin " +  '"' + stdinStdin + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{if defined(stdoutStdout) then ("--stdout " +  '"' + stdoutStdout + '"') else ""} \
      ~{genomicGenomic} \
      ~{annotationAnnotation} \
      ~{toolTool}
  >>>
}