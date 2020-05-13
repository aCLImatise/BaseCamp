version 1.0

task Sam2vcf.pl {
  input {
    Boolean indelsIndelsOnly
    File refseqRefseq
    Boolean keepKeepRef
    Boolean snpsSnpsOnly
    String columnColumnTitle
    String? optionsOptions
    String? inInPileUp
    String? outOutVcf
  }
  command <<<
    sam2vcf.pl \
      ~{optionsOptions} \
      ~{true="--indels-only" false="" indelsIndelsOnly} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--keep-ref" false="" keepKeepRef} \
      ~{true="--snps-only" false="" snpsSnpsOnly} \
      ~{if defined(columnColumnTitle) then ("--column-title " +  '"' + columnColumnTitle + '"') else ""} \
      ~{inInPileUp} \
      ~{outOutVcf}
  >>>
}