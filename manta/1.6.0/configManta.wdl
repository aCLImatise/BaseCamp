version 1.0

task ConfigManta.py {
  input {
    File normalNormalBam
    File tumourTumourBam
    Boolean exoExoMe
    Boolean rnaRna
    Boolean unUnStrandedRna
    File referenceReferenceFastA
    String runRunDir
    File callCallRegions
  }
  command <<<
    configManta.py \
      ~{if defined(normalNormalBam) then ("--normalBam " +  '"' + normalNormalBam + '"') else ""} \
      ~{if defined(tumourTumourBam) then ("--tumourBam " +  '"' + tumourTumourBam + '"') else ""} \
      ~{true="--exome" false="" exoExoMe} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--unstrandedRNA" false="" unUnStrandedRna} \
      ~{if defined(referenceReferenceFastA) then ("--referenceFasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(runRunDir) then ("--runDir " +  '"' + runRunDir + '"') else ""} \
      ~{if defined(callCallRegions) then ("--callRegions " +  '"' + callCallRegions + '"') else ""}
  >>>
}