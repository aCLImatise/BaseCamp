version 1.0

task Multimerge {
  input {
    String? input_file
    Boolean? arg_output_file
    Boolean? arg_reference_fasta
    Boolean? arg_start_location
    Boolean? arg_use_regions
    Boolean? arg_use_targets
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    String? left_shift
    String? trim_alleles
    String? split_alleles
    String? merge_by_location
    String? unique_alleles
    String? hom_ref_split
    String? hom_ref_vcf_out
    String? calls_only
    String? primitives
    String? process_split
    String? process_full
    String? process_formats
  }
  command <<<
    multimerge \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_start_location} \
      ~{true="-R" false="" arg_use_regions} \
      ~{true="-T" false="" arg_use_targets} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{if defined(left_shift) then ("--leftshift " +  '"' + left_shift + '"') else ""} \
      ~{if defined(trim_alleles) then ("--trimalleles " +  '"' + trim_alleles + '"') else ""} \
      ~{if defined(split_alleles) then ("--splitalleles " +  '"' + split_alleles + '"') else ""} \
      ~{if defined(merge_by_location) then ("--merge-by-location " +  '"' + merge_by_location + '"') else ""} \
      ~{if defined(unique_alleles) then ("--unique-alleles " +  '"' + unique_alleles + '"') else ""} \
      ~{if defined(hom_ref_split) then ("--homref-split " +  '"' + hom_ref_split + '"') else ""} \
      ~{if defined(hom_ref_vcf_out) then ("--homref-vcf-out " +  '"' + hom_ref_vcf_out + '"') else ""} \
      ~{if defined(calls_only) then ("--calls-only " +  '"' + calls_only + '"') else ""} \
      ~{if defined(primitives) then ("--primitives " +  '"' + primitives + '"') else ""} \
      ~{if defined(process_split) then ("--process-split " +  '"' + process_split + '"') else ""} \
      ~{if defined(process_full) then ("--process-full " +  '"' + process_full + '"') else ""} \
      ~{if defined(process_formats) then ("--process-formats " +  '"' + process_formats + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The input files"
    arg_output_file: "[ --output-file ] arg   The output file name."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file."
    arg_start_location: "[ --location ] arg      Start location."
    arg_use_regions: "[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal via tabix)."
    arg_use_targets: "[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming the whole file, ignoring things outside the bed regions)."
    limit_records: "Maximum umber of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    left_shift: "Leftshift variant alleles."
    trim_alleles: "Remove unused variant alleles."
    split_alleles: "Split and sort variant alleles."
    merge_by_location: "Merge calls at the same location."
    unique_alleles: "Make alleles unique across a single line."
    hom_ref_split: "Split homref blocks into per-nucleotide blocks."
    hom_ref_vcf_out: "Output split homref blocks as BCF/VCF."
    calls_only: "Remove homref blocks."
    primitives: "Split complex alleles into primitives via  realignment."
    process_split: "Enables splitalleles, trimalleles, unique-alleles, leftshift."
    process_full: "Enables splitalleles, trimalleles, unique-alleles, leftshift, mergebylocation."
    process_formats: "Process GQ/DP/AD format fields."
  }
}