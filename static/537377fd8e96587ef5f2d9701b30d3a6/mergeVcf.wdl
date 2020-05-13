version 1.0

task MergeVcf.sh {
  input {
    Boolean forceForce
    String vcfVcfName
    File outputOutput
    Boolean vV
    String? sampleSampleDirsFile
  }
  command <<<
    mergeVcf.sh \
      ~{sampleSampleDirsFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(vcfVcfName) then ("--vcfname " +  '"' + vcfVcfName + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}