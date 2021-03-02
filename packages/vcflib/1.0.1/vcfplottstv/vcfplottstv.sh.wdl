version 1.0

task Vcfplottstvsh {
  input {
    Boolean? g
    String? n
    Int vcf_two_tsv
    String? vcf
    File? var_file
  }
  command <<<
    vcfplottstv_sh \
      ~{vcf_two_tsv} \
      ~{vcf} \
      ~{var_file} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    g: ""
    n: ""
    vcf_two_tsv: ""
    vcf: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}