version 1.0

task ConfigureStrelkaGermlineWorkflow.py {
  input {
    File bamBam
    File ploidyPloidy
    File noNoCompress
    String callCallContinuousVf
    Boolean rnaRna
    File referenceReferenceFastA
    File inInDelCandidates
    File forcedForcedGt
    Boolean targetedTargeted
    File callCallRegions
    String runRunDir
  }
  command <<<
    configureStrelkaGermlineWorkflow.py \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(noNoCompress) then ("--noCompress " +  '"' + noNoCompress + '"') else ""} \
      ~{if defined(callCallContinuousVf) then ("--callContinuousVf " +  '"' + callCallContinuousVf + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{if defined(referenceReferenceFastA) then ("--referenceFasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(inInDelCandidates) then ("--indelCandidates " +  '"' + inInDelCandidates + '"') else ""} \
      ~{if defined(forcedForcedGt) then ("--forcedGT " +  '"' + forcedForcedGt + '"') else ""} \
      ~{true="--targeted" false="" targetedTargeted} \
      ~{if defined(callCallRegions) then ("--callRegions " +  '"' + callCallRegions + '"') else ""} \
      ~{if defined(runRunDir) then ("--runDir " +  '"' + runRunDir + '"') else ""}
  >>>
}