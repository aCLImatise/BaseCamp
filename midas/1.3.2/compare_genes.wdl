version 1.0

task CompareGenes.py {
  input {
    File outOut
    Int maxMaxGenes
    Int maxMaxSamples
    String distanceDistance
    String dDType
    Float cutCutOff
    File? pathPath
  }
  command <<<
    compare_genes.py \
      ~{pathPath} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(maxMaxGenes) then ("--max_genes " +  '"' + maxMaxGenes + '"') else ""} \
      ~{if defined(maxMaxSamples) then ("--max_samples " +  '"' + maxMaxSamples + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(dDType) then ("--dtype " +  '"' + dDType + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""}
  >>>
}