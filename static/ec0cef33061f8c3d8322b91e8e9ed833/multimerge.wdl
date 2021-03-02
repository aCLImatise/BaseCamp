version 1.0

task Multimerge {
  input {
    File? input_file
    File? arg_output_file
    Boolean? arg_reference_fasta
    Boolean? arg_start_location
    Boolean? arg_use_regionstraversal
    Boolean? targetsstreaming_whole_file
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
    String? process_formats
    String realignment_dot
    String left_shift_dot
  }
  command <<<
    multimerge \
      ~{realignment_dot} \
      ~{left_shift_dot} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_start_location) then "-l" else ""} \
      ~{if (arg_use_regionstraversal) then "-R" else ""} \
      ~{if (targetsstreaming_whole_file) then "-T" else ""} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(left_shift) then ("--leftshift " +  '"' + left_shift + '"') else ""} \
      ~{if defined(trim_alleles) then ("--trimalleles " +  '"' + trim_alleles + '"') else ""} \
      ~{if defined(split_alleles) then ("--splitalleles " +  '"' + split_alleles + '"') else ""} \
      ~{if defined(merge_by_location) then ("--merge-by-location " +  '"' + merge_by_location + '"') else ""} \
      ~{if defined(unique_alleles) then ("--unique-alleles " +  '"' + unique_alleles + '"') else ""} \
      ~{if defined(hom_ref_split) then ("--homref-split " +  '"' + hom_ref_split + '"') else ""} \
      ~{if defined(hom_ref_vcf_out) then ("--homref-vcf-out " +  '"' + hom_ref_vcf_out + '"') else ""} \
      ~{if defined(calls_only) then ("--calls-only " +  '"' + calls_only + '"') else ""} \
      ~{if defined(primitives) then ("--primitives " +  '"' + primitives + '"') else ""} \
      ~{if defined(process_formats) then ("--process-formats " +  '"' + process_formats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "The input files"
    arg_output_file: "[ --output-file ] arg   The output file name."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file."
    arg_start_location: "[ --location ] arg      Start location."
    arg_use_regionstraversal: "[ --regions ] arg       Use a bed file for getting a subset of regions\\n(traversal via tabix)."
    targetsstreaming_whole_file: "[ --targets ] arg       Use a bed file for getting a subset of targets\\n(streaming the whole file, ignoring things outside\\nthe bed regions)."
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
    primitives: "Split complex alleles into primitives via"
    process_formats: "Process GQ/DP/AD format fields."
    realignment_dot: "--process-split arg        Enables splitalleles, trimalleles, unique-alleles,"
    left_shift_dot: "--process-full arg         Enables splitalleles, trimalleles, unique-alleles,"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}