version 1.0

task Vcfgeno2haplo {
  input {
    File? reference
    Int? window_size
    Boolean? only_variants
    File? vcf_file
  }
  command <<<
    vcfgeno2haplo \
      ~{vcf_file} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (only_variants) then "--only-variants" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1"
  }
  parameter_meta {
    reference: "FASTA reference file"
    window_size: "Merge variants at most this many bp apart (default 30)"
    only_variants: "Don't output the entire haplotype, just concatenate\\nREF/ALT strings (delimited by \\\":\\\")"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}