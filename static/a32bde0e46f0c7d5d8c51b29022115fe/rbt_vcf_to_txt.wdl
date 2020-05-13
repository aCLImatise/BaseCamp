version 1.0

task RbtVcfToTxt {
  input {
    Boolean genotypesGenotypes
    String fmtFmt
    String infoInfo
  }
  command <<<
    rbt vcf-to-txt \
      ~{true="--genotypes" false="" genotypesGenotypes} \
      ~{if defined(fmtFmt) then ("--fmt " +  '"' + fmtFmt + '"') else ""} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""}
  >>>
}