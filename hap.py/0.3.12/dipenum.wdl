version 1.0

task Dipenum {
  input {
    String? input_file
    String? write_file_possible
    Boolean? arg_location_subset
    Boolean? arg_reference_fasta
    String? max_n_haplotypes
    Boolean? arg_apply_filters
    Boolean? arg_preprocess_variants
  }
  command <<<
    dipenum \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(write_file_possible) then ("--output " +  '"' + write_file_possible + '"') else ""} \
      ~{true="-l" false="" arg_location_subset} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{if defined(max_n_haplotypes) then ("--max-n-haplotypes " +  '"' + max_n_haplotypes + '"') else ""} \
      ~{true="-f" false="" arg_apply_filters} \
      ~{true="-P" false="" arg_preprocess_variants}
  >>>
  parameter_meta {
    input_file: "The input VCF/BCF file (use file:sample to specify a sample)"
    write_file_possible: "Write a file with all possible haplotypes."
    arg_location_subset: "[ --location ] arg      The location / subset."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file."
    max_n_haplotypes: "Maximum number of haplotypes to enumerate."
    arg_apply_filters: "[ --apply-filters ] arg Apply filters in VCF (default to 1)"
    arg_preprocess_variants: "[ --preprocess ] arg    Preprocess variants"
  }
}