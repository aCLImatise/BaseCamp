version 1.0

task RtgPopsim {
  input {
    File? output_vcf_file
    String? reference
    Boolean? no_gzip
    Int? seed
  }
  command <<<
    rtg popsim \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    output_vcf_file: "output VCF file name"
    reference: "SDF containing the reference genome"
    no_gzip: "do not gzip the output"
    seed: "seed for the random number generator"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}