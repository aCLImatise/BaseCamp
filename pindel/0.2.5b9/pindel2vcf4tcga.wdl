version 1.0

task Pindel2vcf4tcga {
  input {
    String? p
    String? r
    String pin_del_two_vcf
  }
  command <<<
    pindel2vcf4tcga \
      ~{pin_del_two_vcf} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    r: ""
    pin_del_two_vcf: ""
  }
}