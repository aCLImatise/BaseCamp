version 1.0

task CreateSnpList.py {
  input {
    Boolean forceForce
    String vcfVcfName
    Int maxMaxSnps
    File outputOutput
    Boolean vV
    String? sampleSampleDirsFile
    String? filteredFilteredSampleDirsFile
  }
  command <<<
    create_snp_list.py \
      ~{sampleSampleDirsFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(vcfVcfName) then ("--vcfname " +  '"' + vcfVcfName + '"') else ""} \
      ~{if defined(maxMaxSnps) then ("--maxsnps " +  '"' + maxMaxSnps + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{filteredFilteredSampleDirsFile}
  >>>
}