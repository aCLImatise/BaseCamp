version 1.0

task Biotdg {
  input {
    String? r
    String? vcf
    String? p
    Boolean? s
  }
  command <<<
    biotdg \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    r: ""
    vcf: ""
    p: ""
    s: ""
  }
}