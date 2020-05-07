version 1.0

task VsnpMergeVcfIntoFasta.py {
  input {
    String fastFastAFile
    String vcfVcfFile
    String qualQualThreshold
    String mapMapThreshold
    Boolean ambiguityAmbiguityNot
    String? mergeMergeVcfIntoFastApy
  }
  command <<<
    vsnp_merge_vcf_into_fasta.py \
      ~{mergeMergeVcfIntoFastApy} \
      ~{if defined(fastFastAFile) then ("--fasta_file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(vcfVcfFile) then ("--vcf_file " +  '"' + vcfVcfFile + '"') else ""} \
      ~{if defined(qualQualThreshold) then ("--qual_threshold " +  '"' + qualQualThreshold + '"') else ""} \
      ~{if defined(mapMapThreshold) then ("--map_threshold " +  '"' + mapMapThreshold + '"') else ""} \
      ~{true="--ambiguity_NOT" false="" ambiguityAmbiguityNot}
  >>>
}