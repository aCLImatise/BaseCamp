version 1.0

task Vcf2tsv {
  input {
    String? n
    Boolean? g
    String? vcf
    File? file
  }
  command <<<
    vcf2tsv \
      ~{vcf} \
      ~{file} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{true="-g" false="" g}
  >>>
  parameter_meta {
    n: ""
    g: ""
    vcf: ""
    file: ""
  }
}