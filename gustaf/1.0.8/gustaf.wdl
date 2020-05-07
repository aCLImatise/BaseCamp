version 1.0

task Gustaf {
  input {
    Boolean versionVersionCheck
    Int transTransPen
    Int inInVPen
    Int orderOrderPen
    String overlapOverlapThresh
    Int gapGapThresh
    Int inInItGapThresh
    Int breakBreakEndThresh
    Int tandemTandemThresh
    Int breakpointBreakpointPosRange
    Boolean complexComplexBreakpoints
    Int supportSupport
    Int mateMateSupport
    Int libraryLibrarySize
    Int libraryLibraryError
    Boolean revRevCompl
    String matchMatchFile
    String gffGffOut
    String vcfVcfOut
    String jobJobName
    Boolean dotsDots
    Int numNumThreads
    String epsilonEpsilon
    Int minlengthMinlength
    Boolean forwardForward
    Boolean reverseReverse
    String alphabetAlphabet
    Boolean verboseVerbose
    Int kmKmEr
    Int repeatRepeatPeriod
    Int repeatRepeatLength
    String abundanceAbundanceCut
    String xXDrop
    String verificationVerification
    Int disableDisableThresh
    Int numNumMatches
    Int sortSortThresh
  }
  command <<<
    gustaf \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(transTransPen) then ("--transPen " +  '"' + transTransPen + '"') else ""} \
      ~{if defined(inInVPen) then ("--invPen " +  '"' + inInVPen + '"') else ""} \
      ~{if defined(orderOrderPen) then ("--orderPen " +  '"' + orderOrderPen + '"') else ""} \
      ~{if defined(overlapOverlapThresh) then ("--overlapThresh " +  '"' + overlapOverlapThresh + '"') else ""} \
      ~{if defined(gapGapThresh) then ("--gapThresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(inInItGapThresh) then ("--initGapThresh " +  '"' + inInItGapThresh + '"') else ""} \
      ~{if defined(breakBreakEndThresh) then ("--breakendThresh " +  '"' + breakBreakEndThresh + '"') else ""} \
      ~{if defined(tandemTandemThresh) then ("--tandemThresh " +  '"' + tandemTandemThresh + '"') else ""} \
      ~{if defined(breakpointBreakpointPosRange) then ("--breakpoint-pos-range " +  '"' + breakpointBreakpointPosRange + '"') else ""} \
      ~{true="--complex-breakpoints" false="" complexComplexBreakpoints} \
      ~{if defined(supportSupport) then ("--support " +  '"' + supportSupport + '"') else ""} \
      ~{if defined(mateMateSupport) then ("--mate-support " +  '"' + mateMateSupport + '"') else ""} \
      ~{if defined(libraryLibrarySize) then ("--library-size " +  '"' + libraryLibrarySize + '"') else ""} \
      ~{if defined(libraryLibraryError) then ("--library-error " +  '"' + libraryLibraryError + '"') else ""} \
      ~{true="--revcompl" false="" revRevCompl} \
      ~{if defined(matchMatchFile) then ("--matchfile " +  '"' + matchMatchFile + '"') else ""} \
      ~{if defined(gffGffOut) then ("--gffOut " +  '"' + gffGffOut + '"') else ""} \
      ~{if defined(vcfVcfOut) then ("--vcfOut " +  '"' + vcfVcfOut + '"') else ""} \
      ~{if defined(jobJobName) then ("--jobName " +  '"' + jobJobName + '"') else ""} \
      ~{true="--dots" false="" dotsDots} \
      ~{if defined(numNumThreads) then ("--numThreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(epsilonEpsilon) then ("--epsilon " +  '"' + epsilonEpsilon + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minLength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(repeatRepeatPeriod) then ("--repeatPeriod " +  '"' + repeatRepeatPeriod + '"') else ""} \
      ~{if defined(repeatRepeatLength) then ("--repeatLength " +  '"' + repeatRepeatLength + '"') else ""} \
      ~{if defined(abundanceAbundanceCut) then ("--abundanceCut " +  '"' + abundanceAbundanceCut + '"') else ""} \
      ~{if defined(xXDrop) then ("--xDrop " +  '"' + xXDrop + '"') else ""} \
      ~{if defined(verificationVerification) then ("--verification " +  '"' + verificationVerification + '"') else ""} \
      ~{if defined(disableDisableThresh) then ("--disableThresh " +  '"' + disableDisableThresh + '"') else ""} \
      ~{if defined(numNumMatches) then ("--numMatches " +  '"' + numNumMatches + '"') else ""} \
      ~{if defined(sortSortThresh) then ("--sortThresh " +  '"' + sortSortThresh + '"') else ""}
  >>>
}