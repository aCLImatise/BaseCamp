version 1.0

task VcfgenotypecompareVcf file {
  input {
    String? otherOtherGenotypeTag
    String? vcfVcfFile
  }
  command <<<
    vcfgenotypecompare vcf file \
      ~{otherOtherGenotypeTag} \
      ~{vcfVcfFile}
  >>>
}