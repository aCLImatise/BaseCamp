version 1.0

task Dipenum {
  input {
    File? input_file
    File? write_file_possible
    Boolean? arg_location_subset
    Boolean? arg_reference_fasta
    Int? max_n_haplotypes
    Boolean? arg_apply_filters
    Boolean? arg_preprocess_variants
  }
  command <<<
    dipenum \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(write_file_possible) then ("--output " +  '"' + write_file_possible + '"') else ""} \
      ~{if (arg_location_subset) then "-l" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if defined(max_n_haplotypes) then ("--max-n-haplotypes " +  '"' + max_n_haplotypes + '"') else ""} \
      ~{if (arg_apply_filters) then "-f" else ""} \
      ~{if (arg_preprocess_variants) then "-P" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "The input VCF/BCF file (use file:sample to specify\\na sample)"
    write_file_possible: "Write a file with all possible haplotypes."
    arg_location_subset: "[ --location ] arg      The location / subset."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file."
    max_n_haplotypes: "Maximum number of haplotypes to enumerate."
    arg_apply_filters: "[ --apply-filters ] arg Apply filters in VCF (default to 1)"
    arg_preprocess_variants: "[ --preprocess ] arg    Preprocess variants"
  }
  output {
    File out_stdout = stdout()
  }
}