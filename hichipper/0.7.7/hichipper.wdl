version 1.0

task Hichipper {
  input {
    String outOut
    Boolean keepKeepTempFiles
    String inputInputVi
    String restrictionRestrictionFrags
    String peaksPeaks
    String keepKeepSamples
    String ignoreIgnoreSamples
    String readReadLength
    String minMinDist
    String maxMaxDist
    String macs2Macs2String
    String macs2Macs2Genome
    String peakPeakPad
    String mergeMergeGap
    Boolean noNoMerge
    Boolean skipSkipResFragPad
    Boolean skipSkipBackgroundCorrection
    Boolean makeMakeUcsc
    Boolean makeMakeWashu
    Boolean basicBasicQc
    Boolean skipSkipDiffLoop
    String bedBedToolsPath
    String macs2Macs2Path
    String tabTabIxPath
    String bBGzipPath
    String rRPath
  }
  command <<<
    hichipper \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--keep-temp-files" false="" keepKeepTempFiles} \
      ~{if defined(inputInputVi) then ("--input-vi " +  '"' + inputInputVi + '"') else ""} \
      ~{if defined(restrictionRestrictionFrags) then ("--restriction-frags " +  '"' + restrictionRestrictionFrags + '"') else ""} \
      ~{if defined(peaksPeaks) then ("--peaks " +  '"' + peaksPeaks + '"') else ""} \
      ~{if defined(keepKeepSamples) then ("--keep-samples " +  '"' + keepKeepSamples + '"') else ""} \
      ~{if defined(ignoreIgnoreSamples) then ("--ignore-samples " +  '"' + ignoreIgnoreSamples + '"') else ""} \
      ~{if defined(readReadLength) then ("--read-length " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(minMinDist) then ("--min-dist " +  '"' + minMinDist + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--max-dist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(macs2Macs2String) then ("--macs2-string " +  '"' + macs2Macs2String + '"') else ""} \
      ~{if defined(macs2Macs2Genome) then ("--macs2-genome " +  '"' + macs2Macs2Genome + '"') else ""} \
      ~{if defined(peakPeakPad) then ("--peak-pad " +  '"' + peakPeakPad + '"') else ""} \
      ~{if defined(mergeMergeGap) then ("--merge-gap " +  '"' + mergeMergeGap + '"') else ""} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{true="--skip-resfrag-pad" false="" skipSkipResFragPad} \
      ~{true="--skip-background-correction" false="" skipSkipBackgroundCorrection} \
      ~{true="--make-ucsc" false="" makeMakeUcsc} \
      ~{true="--make-washu" false="" makeMakeWashu} \
      ~{true="--basic-qc" false="" basicBasicQc} \
      ~{true="--skip-diffloop" false="" skipSkipDiffLoop} \
      ~{if defined(bedBedToolsPath) then ("--bedtools-path " +  '"' + bedBedToolsPath + '"') else ""} \
      ~{if defined(macs2Macs2Path) then ("--macs2-path " +  '"' + macs2Macs2Path + '"') else ""} \
      ~{if defined(tabTabIxPath) then ("--tabix-path " +  '"' + tabTabIxPath + '"') else ""} \
      ~{if defined(bBGzipPath) then ("--bgzip-path " +  '"' + bBGzipPath + '"') else ""} \
      ~{if defined(rRPath) then ("--r-path " +  '"' + rRPath + '"') else ""}
  >>>
}