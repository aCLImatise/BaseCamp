version 1.0

task Vcfutils.plVcf2fq {
  input {
    Int dD
    Int dD
    Int qQ
    Int lL
    String? allAllSiteVcf
  }
  command <<<
    vcfutils.pl vcf2fq \
      ~{allAllSiteVcf} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}