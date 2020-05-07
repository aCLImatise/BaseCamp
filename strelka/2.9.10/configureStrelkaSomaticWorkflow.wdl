version 1.0

task ConfigureStrelkaSomaticWorkflow.py {
  input {
    File normalNormalBam
    File tumourTumourBam
    Boolean outputOutputCallableRegions
    File referenceReferenceFastA
    File inInDelCandidates
    File forcedForcedGt
    Boolean targetedTargeted
    File callCallRegions
    String runRunDir
  }
  command <<<
    configureStrelkaSomaticWorkflow.py \
      ~{if defined(normalNormalBam) then ("--normalBam " +  '"' + normalNormalBam + '"') else ""} \
      ~{if defined(tumourTumourBam) then ("--tumourBam " +  '"' + tumourTumourBam + '"') else ""} \
      ~{true="--outputCallableRegions" false="" outputOutputCallableRegions} \
      ~{if defined(referenceReferenceFastA) then ("--referenceFasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(inInDelCandidates) then ("--indelCandidates " +  '"' + inInDelCandidates + '"') else ""} \
      ~{if defined(forcedForcedGt) then ("--forcedGT " +  '"' + forcedForcedGt + '"') else ""} \
      ~{true="--targeted" false="" targetedTargeted} \
      ~{if defined(callCallRegions) then ("--callRegions " +  '"' + callCallRegions + '"') else ""} \
      ~{if defined(runRunDir) then ("--runDir " +  '"' + runRunDir + '"') else ""}
  >>>
}