version 1.0

task Macs2Callpeak {
  input {
    Array[String]+ treatmentTreatment
    Boolean cC
    String formatFormat
    String gGSize
    String tTSize
    String keepKeepDup
    String outdirOutdir
    String nameName
    Boolean bdgBdg
    String verboseVerbose
    Boolean trackTrackLine
    Boolean spSpMr
    Boolean noNoModel
    String shiftShift
    String extExtSize
    String bwBw
    String dDMin
    String mM
    Boolean fixFixBimodal
    String qQValue
    String pPValue
    String scaleScaleTo
    Boolean downDownSample
    String seedSeed
    String tempdirTempdir
    Boolean noNoLambda
    String sSLocal
    String lLLocal
    Int maxMaxGap
    Int minMinLength
    Boolean broadBroad
    String broadBroadCutOff
    Boolean cutCutOffAnalysis
    Boolean callCallSummits
    String feFeCutOff
    String bufferBufferSize
    Boolean toToLarge
    String ratioRatio
  }
  command <<<
    macs2 callpeak \
      ~{if defined(treatmentTreatment) then ("--treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(gGSize) then ("--gsize " +  '"' + gGSize + '"') else ""} \
      ~{if defined(tTSize) then ("--tsize " +  '"' + tTSize + '"') else ""} \
      ~{if defined(keepKeepDup) then ("--keep-dup " +  '"' + keepKeepDup + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--bdg" false="" bdgBdg} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--trackline" false="" trackTrackLine} \
      ~{true="--SPMR" false="" spSpMr} \
      ~{true="--nomodel" false="" noNoModel} \
      ~{if defined(shiftShift) then ("--shift " +  '"' + shiftShift + '"') else ""} \
      ~{if defined(extExtSize) then ("--extsize " +  '"' + extExtSize + '"') else ""} \
      ~{if defined(bwBw) then ("--bw " +  '"' + bwBw + '"') else ""} \
      ~{if defined(dDMin) then ("--d-min " +  '"' + dDMin + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="--fix-bimodal" false="" fixFixBimodal} \
      ~{if defined(qQValue) then ("--qvalue " +  '"' + qQValue + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(scaleScaleTo) then ("--scale-to " +  '"' + scaleScaleTo + '"') else ""} \
      ~{true="--down-sample" false="" downDownSample} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{true="--nolambda" false="" noNoLambda} \
      ~{if defined(sSLocal) then ("--slocal " +  '"' + sSLocal + '"') else ""} \
      ~{if defined(lLLocal) then ("--llocal " +  '"' + lLLocal + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max-gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{true="--broad" false="" broadBroad} \
      ~{if defined(broadBroadCutOff) then ("--broad-cutoff " +  '"' + broadBroadCutOff + '"') else ""} \
      ~{true="--cutoff-analysis" false="" cutCutOffAnalysis} \
      ~{true="--call-summits" false="" callCallSummits} \
      ~{if defined(feFeCutOff) then ("--fe-cutoff " +  '"' + feFeCutOff + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{true="--to-large" false="" toToLarge} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""}
  >>>
}