version 1.0

task VcfModifyHeader.pyVcf {
  input {
    String? i
    String? c
    String? t
    String? n
    String? d
    String vcf_modify_header_do_tpy
  }
  command <<<
    vcf_modify_header.py vcf \
      ~{vcf_modify_header_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    c: ""
    t: ""
    n: ""
    d: ""
    vcf_modify_header_do_tpy: ""
  }
}