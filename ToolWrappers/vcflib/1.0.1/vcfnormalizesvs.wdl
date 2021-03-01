version 1.0

task Vcfnormalizesvs {
  input {
    String? reference
    String? insertions
    String var_dot_vcf
  }
  command <<<
    vcfnormalizesvs \
      ~{var_dot_vcf} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(insertions) then ("--insertions " +  '"' + insertions + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    reference: "FASTA-format reference genome from which to pull SV sequences."
    insertions: "FASTA-format insertion sequences, with IDs matching the ALT allele tags in the vcf"
    var_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}