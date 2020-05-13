version 1.0

task Vcf2tsv {
  input {
    String nN
    Boolean gG
    String? vcfVcf
    File? fileFile
  }
  command <<<
    vcf2tsv \
      ~{vcfVcf} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{fileFile}
  >>>
}