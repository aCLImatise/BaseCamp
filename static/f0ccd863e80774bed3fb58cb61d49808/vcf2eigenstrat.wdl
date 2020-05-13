version 1.0

task Vcf2eigenstrat {
  input {
    File snpSnpFile
    String fillFillHomRef
    File outOutPrefix
    String chromChrom
    String outOutChrom
    Boolean transversionsTransversionsOnly
  }
  command <<<
    vcf2eigenstrat \
      ~{if defined(snpSnpFile) then ("--snpFile " +  '"' + snpSnpFile + '"') else ""} \
      ~{if defined(fillFillHomRef) then ("--fillHomRef " +  '"' + fillFillHomRef + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outPrefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(outOutChrom) then ("--outChrom " +  '"' + outOutChrom + '"') else ""} \
      ~{true="--transversionsOnly" false="" transversionsTransversionsOnly}
  >>>
}