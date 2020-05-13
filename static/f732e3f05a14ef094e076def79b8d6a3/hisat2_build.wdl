version 1.0

task Hisat2Build {
  input {
    Boolean oO
    Boolean tT
    Int localLocalOffRate
    Int localLocalFTabChars
    File snpSnp
    File haplotypeHaplotype
    File ssSs
    File exonExon
    File repeatRepeatRef
    File repeatRepeatInfo
    File repeatRepeatSnp
    File repeatRepeatHaplotype
    Int seedSeed
    Boolean qQ
    String? referenceReferenceIn
    String? hisat2Hisat2IndexBase
  }
  command <<<
    hisat2-build \
      ~{referenceReferenceIn} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(localLocalOffRate) then ("--localoffrate " +  '"' + localLocalOffRate + '"') else ""} \
      ~{if defined(localLocalFTabChars) then ("--localftabchars " +  '"' + localLocalFTabChars + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{if defined(haplotypeHaplotype) then ("--haplotype " +  '"' + haplotypeHaplotype + '"') else ""} \
      ~{if defined(ssSs) then ("--ss " +  '"' + ssSs + '"') else ""} \
      ~{if defined(exonExon) then ("--exon " +  '"' + exonExon + '"') else ""} \
      ~{if defined(repeatRepeatRef) then ("--repeat-ref " +  '"' + repeatRepeatRef + '"') else ""} \
      ~{if defined(repeatRepeatInfo) then ("--repeat-info " +  '"' + repeatRepeatInfo + '"') else ""} \
      ~{if defined(repeatRepeatSnp) then ("--repeat-snp " +  '"' + repeatRepeatSnp + '"') else ""} \
      ~{if defined(repeatRepeatHaplotype) then ("--repeat-haplotype " +  '"' + repeatRepeatHaplotype + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{hisat2Hisat2IndexBase}
  >>>
}