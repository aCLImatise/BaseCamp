version 1.0

task CIRCexplorer.py {
  input {
    String fusionFusion
    String junJunC
    String genomeGenome
    String refRef
    String outputOutput
    Boolean tmpTmp
    Boolean noNoFix
  }
  command <<<
    CIRCexplorer.py \
      ~{if defined(fusionFusion) then ("--fusion " +  '"' + fusionFusion + '"') else ""} \
      ~{if defined(junJunC) then ("--junc " +  '"' + junJunC + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--tmp" false="" tmpTmp} \
      ~{true="--no-fix" false="" noNoFix}
  >>>
}