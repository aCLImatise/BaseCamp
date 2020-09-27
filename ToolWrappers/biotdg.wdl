version 1.0

task Biotdg {
  input {
    Boolean? s
    String? p
    String? vcf
    String? r
  }
  command <<<
    biotdg \
      ~{if (s) then "-s" else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    s: ""
    p: ""
    vcf: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}