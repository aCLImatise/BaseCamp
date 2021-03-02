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
    docker: "None"
  }
  parameter_meta {
    reference: "FASTA reference file, required with -i and -u"
    window_size: "Merge variants at most this many bp apart (default 30)"
    only_variants: "Don't output the entire haplotype, just concatenate\\nREF/ALT strings (delimited by \\\":\\\")"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}