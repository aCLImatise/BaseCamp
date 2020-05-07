version 1.0

task MapDamage {
  input {
    File inputInput
    String referenceReference
    String downDownSample
    String downDownSampleSeed
    Boolean mergeMergeReferenceSequences
    Int lengthLength
    String aroundAround
    Int minMinBaseQual
    Directory folderFolder
    Boolean fastFastA
    Boolean plotPlotOnly
    Boolean quietQuiet
    Boolean verboseVerbose
    String mapMapDamageModules
    String ymaxYmax
    String readReadPlot
    String refRefPlot
    String titleTitle
    String randRand
    String burnBurn
    String adjustAdjust
    String iterIter
    Boolean forwardForward
    Boolean reverseReverse
    Boolean varVarDisp
    Boolean jukesJukesCantor
    Boolean diffDiffHangs
    Boolean fixFixNicks
    Boolean useUseRawNickFreq
    Boolean singleSingleStranded
    Boolean themeThemeBw
    String seqSeqLength
    Boolean statsStatsOnly
    Boolean noNoStats
    Boolean checkCheckRPackages
    Boolean rescaleRescale
    Boolean rescaleRescaleOnly
    String rescaleRescaleOut
    String rescaleRescaleLength5p
    String rescaleRescaleLength3p
  }
  command <<<
    mapDamage \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(downDownSample) then ("--downsample " +  '"' + downDownSample + '"') else ""} \
      ~{if defined(downDownSampleSeed) then ("--downsample-seed " +  '"' + downDownSampleSeed + '"') else ""} \
      ~{true="--merge-reference-sequences" false="" mergeMergeReferenceSequences} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(aroundAround) then ("--around " +  '"' + aroundAround + '"') else ""} \
      ~{if defined(minMinBaseQual) then ("--min-basequal " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(folderFolder) then ("--folder " +  '"' + folderFolder + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--plot-only" false="" plotPlotOnly} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(mapMapDamageModules) then ("--mapdamage-modules " +  '"' + mapMapDamageModules + '"') else ""} \
      ~{if defined(ymaxYmax) then ("--ymax " +  '"' + ymaxYmax + '"') else ""} \
      ~{if defined(readReadPlot) then ("--readplot " +  '"' + readReadPlot + '"') else ""} \
      ~{if defined(refRefPlot) then ("--refplot " +  '"' + refRefPlot + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(randRand) then ("--rand " +  '"' + randRand + '"') else ""} \
      ~{if defined(burnBurn) then ("--burn " +  '"' + burnBurn + '"') else ""} \
      ~{if defined(adjustAdjust) then ("--adjust " +  '"' + adjustAdjust + '"') else ""} \
      ~{if defined(iterIter) then ("--iter " +  '"' + iterIter + '"') else ""} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--var-disp" false="" varVarDisp} \
      ~{true="--jukes-cantor" false="" jukesJukesCantor} \
      ~{true="--diff-hangs" false="" diffDiffHangs} \
      ~{true="--fix-nicks" false="" fixFixNicks} \
      ~{true="--use-raw-nick-freq" false="" useUseRawNickFreq} \
      ~{true="--single-stranded" false="" singleSingleStranded} \
      ~{true="--theme-bw" false="" themeThemeBw} \
      ~{if defined(seqSeqLength) then ("--seq-length " +  '"' + seqSeqLength + '"') else ""} \
      ~{true="--stats-only" false="" statsStatsOnly} \
      ~{true="--no-stats" false="" noNoStats} \
      ~{true="--check-R-packages" false="" checkCheckRPackages} \
      ~{true="--rescale" false="" rescaleRescale} \
      ~{true="--rescale-only" false="" rescaleRescaleOnly} \
      ~{if defined(rescaleRescaleOut) then ("--rescale-out " +  '"' + rescaleRescaleOut + '"') else ""} \
      ~{if defined(rescaleRescaleLength5p) then ("--rescale-length-5p " +  '"' + rescaleRescaleLength5p + '"') else ""} \
      ~{if defined(rescaleRescaleLength3p) then ("--rescale-length-3p " +  '"' + rescaleRescaleLength3p + '"') else ""}
  >>>
}