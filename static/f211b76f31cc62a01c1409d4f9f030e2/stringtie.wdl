version 1.0

task Stringtie {
  input {
    String? estimate_abundance_requires
    String? assemble_transcripts_given
    String? multimapping_correction_default
    String? usage_message_exit
    String? reference_annotation_include
    String? output_file_name
    Int? minimum_input_transcript_length
    Int? minimum_input_transcript_coverage
    Int? minimum_input_transcript_fpkm
    Int? minimum_input_transcript_tpm
    Int? minimum_isoform_fraction
    String? gap_merge_together
    Boolean? keep_merged_transcripts
    String? name_prefix_output
    String? p
    String input_dot_bam_dot_dot
  }
  command <<<
    stringtie \
      ~{input_dot_bam_dot_dot} \
      ~{if defined(estimate_abundance_requires) then ("-e " +  '"' + estimate_abundance_requires + '"') else ""} \
      ~{if defined(assemble_transcripts_given) then ("-x " +  '"' + assemble_transcripts_given + '"') else ""} \
      ~{if defined(multimapping_correction_default) then ("-u " +  '"' + multimapping_correction_default + '"') else ""} \
      ~{if defined(usage_message_exit) then ("-h " +  '"' + usage_message_exit + '"') else ""} \
      ~{if defined(reference_annotation_include) then ("-G " +  '"' + reference_annotation_include + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(minimum_input_transcript_length) then ("-m " +  '"' + minimum_input_transcript_length + '"') else ""} \
      ~{if defined(minimum_input_transcript_coverage) then ("-c " +  '"' + minimum_input_transcript_coverage + '"') else ""} \
      ~{if defined(minimum_input_transcript_fpkm) then ("-F " +  '"' + minimum_input_transcript_fpkm + '"') else ""} \
      ~{if defined(minimum_input_transcript_tpm) then ("-T " +  '"' + minimum_input_transcript_tpm + '"') else ""} \
      ~{if defined(minimum_isoform_fraction) then ("-f " +  '"' + minimum_isoform_fraction + '"') else ""} \
      ~{if defined(gap_merge_together) then ("-g " +  '"' + gap_merge_together + '"') else ""} \
      ~{true="-i" false="" keep_merged_transcripts} \
      ~{if defined(name_prefix_output) then ("-l " +  '"' + name_prefix_output + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    estimate_abundance_requires: "estimate the abundance of given reference transcripts (requires -G)"
    assemble_transcripts_given: "not assemble any transcripts on the given reference sequence(s)"
    multimapping_correction_default: "multi-mapping correction (default: correction enabled)"
    usage_message_exit: "this usage message and exit"
    reference_annotation_include: "reference annotation to include in the merging (GTF/GFF3)"
    output_file_name: "output file name for the merged transcripts GTF (default: stdout)"
    minimum_input_transcript_length: "minimum input transcript length to include in the merge (default: 50)"
    minimum_input_transcript_coverage: "minimum input transcript coverage to include in the merge (default: 0)"
    minimum_input_transcript_fpkm: "minimum input transcript FPKM to include in the merge (default: 1.0)"
    minimum_input_transcript_tpm: "minimum input transcript TPM to include in the merge (default: 1.0)"
    minimum_isoform_fraction: "minimum isoform fraction (default: 0.01)"
    gap_merge_together: "gap between transcripts to merge together (default: 250)"
    keep_merged_transcripts: "keep merged transcripts with retained introns; by default these are not kept unless there is strong evidence for them"
    name_prefix_output: "name prefix for output transcripts (default: MSTRG)"
    p: ""
    input_dot_bam_dot_dot: ""
  }
}