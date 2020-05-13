version 1.0

task Vcf2sequence {
  input {
    File vcfVcf
    String sampleSample
    String regionRegion
    File regionRegionFile
  }
  command <<<
    vcf2sequence \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(regionRegionFile) then ("--region-file " +  '"' + regionRegionFile + '"') else ""}
  >>>
}