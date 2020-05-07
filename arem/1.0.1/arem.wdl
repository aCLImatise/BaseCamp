version 1.0

task Arem {
  input {
    String treatmentTreatment
    String controlControl
    String nameName
    String formatFormat
    String petPetDist
    String gGSize
    String tTSize
    String bwBw
    String pPValue
    String mMFold
    Boolean noNoLambda
    String sSLocal
    String lLLocal
    Boolean offOffAuto
    Boolean noNoModel
    String shiftShiftSize
    String keepKeepDup
    Boolean toToSmall
    Boolean wigWig
    Boolean bdgBdg
    Boolean singleSingleProfile
    String spaceSpace
    Boolean callCallSubPeaks
    String verboseVerbose
    Boolean diagDiag
    String feFeMin
    String feFeMax
    String feFeStep
    Boolean noNoEm
    Int emEmConvergeDiff
    Int emEmMinScore
    Int emEmMaxScore
    Boolean emEmShowGraphs
    String qualityQualityScale
    Boolean randomRandomMulti
    Boolean noNoMulti
    Boolean noNoGreedyCaller
    Boolean noNoMapQuals
    String priorPriorSnp
    Boolean writeWriteReadProbs
  }
  command <<<
    arem \
      ~{if defined(treatmentTreatment) then ("--treatment " +  '"' + treatmentTreatment + '"') else ""} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(petPetDist) then ("--petdist " +  '"' + petPetDist + '"') else ""} \
      ~{if defined(gGSize) then ("--gsize " +  '"' + gGSize + '"') else ""} \
      ~{if defined(tTSize) then ("--tsize " +  '"' + tTSize + '"') else ""} \
      ~{if defined(bwBw) then ("--bw " +  '"' + bwBw + '"') else ""} \
      ~{if defined(pPValue) then ("--pvalue " +  '"' + pPValue + '"') else ""} \
      ~{if defined(mMFold) then ("--mfold " +  '"' + mMFold + '"') else ""} \
      ~{true="--nolambda" false="" noNoLambda} \
      ~{if defined(sSLocal) then ("--slocal " +  '"' + sSLocal + '"') else ""} \
      ~{if defined(lLLocal) then ("--llocal " +  '"' + lLLocal + '"') else ""} \
      ~{true="--off-auto" false="" offOffAuto} \
      ~{true="--nomodel" false="" noNoModel} \
      ~{if defined(shiftShiftSize) then ("--shiftsize " +  '"' + shiftShiftSize + '"') else ""} \
      ~{if defined(keepKeepDup) then ("--keep-dup " +  '"' + keepKeepDup + '"') else ""} \
      ~{true="--to-small" false="" toToSmall} \
      ~{true="--wig" false="" wigWig} \
      ~{true="--bdg" false="" bdgBdg} \
      ~{true="--single-profile" false="" singleSingleProfile} \
      ~{if defined(spaceSpace) then ("--space " +  '"' + spaceSpace + '"') else ""} \
      ~{true="--call-subpeaks" false="" callCallSubPeaks} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--diag" false="" diagDiag} \
      ~{if defined(feFeMin) then ("--fe-min " +  '"' + feFeMin + '"') else ""} \
      ~{if defined(feFeMax) then ("--fe-max " +  '"' + feFeMax + '"') else ""} \
      ~{if defined(feFeStep) then ("--fe-step " +  '"' + feFeStep + '"') else ""} \
      ~{true="--no-EM" false="" noNoEm} \
      ~{if defined(emEmConvergeDiff) then ("--EM-converge-diff " +  '"' + emEmConvergeDiff + '"') else ""} \
      ~{if defined(emEmMinScore) then ("--EM-min-score " +  '"' + emEmMinScore + '"') else ""} \
      ~{if defined(emEmMaxScore) then ("--EM-max-score " +  '"' + emEmMaxScore + '"') else ""} \
      ~{true="--EM-show-graphs" false="" emEmShowGraphs} \
      ~{if defined(qualityQualityScale) then ("--quality-scale " +  '"' + qualityQualityScale + '"') else ""} \
      ~{true="--random-multi" false="" randomRandomMulti} \
      ~{true="--no-multi" false="" noNoMulti} \
      ~{true="--no-greedy-caller" false="" noNoGreedyCaller} \
      ~{true="--no-map-quals" false="" noNoMapQuals} \
      ~{if defined(priorPriorSnp) then ("--prior-snp " +  '"' + priorPriorSnp + '"') else ""} \
      ~{true="--write-read-probs" false="" writeWriteReadProbs}
  >>>
}