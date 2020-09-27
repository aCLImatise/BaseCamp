version 1.0

task VcfModifyHeaderpyVcf {
  input {
    String? d
    String? n
    String? t
    String? c
    String? i
    String vcf_modify_header_do_tpy
  }
  command <<<
    vcf_modify_header_py vcf \
      ~{vcf_modify_header_do_tpy} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    n: ""
    t: ""
    c: ""
    i: ""
    vcf_modify_header_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}