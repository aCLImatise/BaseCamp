version 1.0

task Hapenum {
  input {
    String? input_file
    String? output_dot
    String? output_fast_a
    Boolean? arg_location_subset
    Boolean? arg_reference_fasta
    Boolean? arg_apply_filtering
    Boolean? arg_preprocess_variants
    String? max_n_haplotypes
  }
  command <<<
    hapenum \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dot) then ("--output-dot " +  '"' + output_dot + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{true="-l" false="" arg_location_subset} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{true="-P" false="" arg_preprocess_variants} \
      ~{if defined(max_n_haplotypes) then ("--max-n-haplotypes " +  '"' + max_n_haplotypes + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The input VCF/BCF file (use file:sample to specify a sample)"
    output_dot: "Write a dot file with the reference graph."
    output_fast_a: "Write a fasta file with all possible haplotypes."
    arg_location_subset: "[ --location ] arg      The location / subset."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    arg_preprocess_variants: "[ --preprocess ] arg    Preprocess variants"
    max_n_haplotypes: "Maximum number of haplotypes to enumerate."
  }
}