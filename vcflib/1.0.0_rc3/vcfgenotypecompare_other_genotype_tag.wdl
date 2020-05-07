version 1.0

task VcfgenotypecompareOtherGenotypeTag {
  input {
    String? vcfVcfFile
  }
  command <<<
    vcfgenotypecompare other-genotype-tag \
      ~{vcfVcfFile}
  >>>
}