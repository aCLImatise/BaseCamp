version 1.0

task Pindel2vcf {
  input {
    String? p
    String? r
  }
  command <<<
    pindel2vcf \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    r: ""
  }
}