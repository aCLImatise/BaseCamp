version 1.0

task FillFs {
  input {
    File bedBedMask
    Int clusterCluster
    Int lengthLength
    Boolean maskMaskChar
    File refseqRefseq
    File vcfVcfMask
    String? optionsOptions
    File? fileFileVcf
  }
  command <<<
    fill-fs \
      ~{optionsOptions} \
      ~{if defined(bedBedMask) then ("--bed-mask " +  '"' + bedBedMask + '"') else ""} \
      ~{if defined(clusterCluster) then ("--cluster " +  '"' + clusterCluster + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--mask-char" false="" maskMaskChar} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{if defined(vcfVcfMask) then ("--vcf-mask " +  '"' + vcfVcfMask + '"') else ""} \
      ~{fileFileVcf}
  >>>
}