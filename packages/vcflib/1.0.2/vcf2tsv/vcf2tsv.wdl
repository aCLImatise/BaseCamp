version 1.0

task Vcf2tsv {
  input {
    Boolean? g
    String? n
    String? vcf
    File? var_file
  }
  command <<<
    vcf2tsv \
      ~{vcf} \
      ~{var_file} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    g: ""
    n: ""
    vcf: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}