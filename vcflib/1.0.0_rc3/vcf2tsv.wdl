version 1.0

task Vcf2tsv {
  input {
    Boolean? g
    String? n
    String? vcf
    File? file
  }
  command <<<
    vcf2tsv \
      ~{vcf} \
      ~{file} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    n: ""
    vcf: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}