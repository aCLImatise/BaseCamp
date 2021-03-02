version 1.0

task MegalodonExtrasVariantsResolve {
  input {
    File? output_filename
    Int? max_likelihood_ratio
    Int? min_depth
    Boolean? trim_variants
    File? reverse_strand_variants
    Int? homopolymer_min_length
    Boolean? exclude_both_strand_homopolymers
    String field_dot
  }
  command <<<
    megalodon_extras variants resolve \
      ~{field_dot} \
      ~{if defined(output_filename) then ("--output-filename " +  '"' + output_filename + '"') else ""} \
      ~{if defined(max_likelihood_ratio) then ("--max-likelihood-ratio " +  '"' + max_likelihood_ratio + '"') else ""} \
      ~{if defined(min_depth) then ("--min-depth " +  '"' + min_depth + '"') else ""} \
      ~{if (trim_variants) then "--trim-variants" else ""} \
      ~{if defined(reverse_strand_variants) then ("--reverse-strand-variants " +  '"' + reverse_strand_variants + '"') else ""} \
      ~{if defined(homopolymer_min_length) then ("--homopolymer-min-length " +  '"' + homopolymer_min_length + '"') else ""} \
      ~{if (exclude_both_strand_homopolymers) then "--exclude-both-strand-homopolymers" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    output_filename: "Output filename. Default:\\nmegalodon.consolidated_variants.vcf"
    max_likelihood_ratio: "Maximum likelihood ratio ([ref prob] / [max alt prob])\\nto include variant in output. Allows output of\\nuncertain reference calls. Default: 1; Include only\\nsites called as alternative."
    min_depth: "Minimum depth to include a variant. Default: No depth\\nfilter"
    trim_variants: "Trim extra padding sequence included by megalodon\\n(e.g. around repeat-region indels). Default: Output as\\nfound in input variants."
    reverse_strand_variants: "Variants file produced only from reads mapping to the\\nreverse strand. If provided, this assumes that the\\nmain variants file contains variants only supported by\\nreads from the forward strand. This is used to\\nidentify systematic basecalling error variants. Errors\\nmade on both strands indicate potential putative\\nvariants and are thus excluded. Homopolymer variants\\noccuring on both strands are included by default.\\nExclude these variants as well by setting --exclude-\\nboth-strand-homopolymers ."
    homopolymer_min_length: "Minimum length to consider a variant as a homopolymer.\\nDefault: 4"
    exclude_both_strand_homopolymers: "By default homopolymer variants are included even if\\nthey occur on both strands. Set this flag to treat\\nhomopolymer variants as other variants.\\n"
    field_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}