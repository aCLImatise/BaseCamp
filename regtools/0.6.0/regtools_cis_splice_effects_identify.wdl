version 1.0

task RegtoolsCisspliceeffectsIdentify {
  input {
    File? output_file_containing_aberrant_splice_junctions
    File? output_file_containing_variants
    File? output_file_containing_aberrant_junctions_bed
    Int? strand_specificity_rna
    String? tag_used_label
    Int? minimum_anchor_length
    Int? minimum_intron_length
    Int? maximum_intron_length
    Int? window_size_identify
    Int? maximum_distance_exonic
    Int? maximum_distance_intronic
    Boolean? annotate_variants_intronic
    Boolean? annotate_variants_used
    Boolean? skip_single_transcripts
    String variants_dot_vcf
    String alignments_dot_bam
    String ref_dot_fa
    String annotations_dot_gtf
  }
  command <<<
    regtools cis_splice_effects identify \
      ~{variants_dot_vcf} \
      ~{alignments_dot_bam} \
      ~{ref_dot_fa} \
      ~{annotations_dot_gtf} \
      ~{if defined(output_file_containing_aberrant_splice_junctions) then ("-o " +  '"' + output_file_containing_aberrant_splice_junctions + '"') else ""} \
      ~{if defined(output_file_containing_variants) then ("-v " +  '"' + output_file_containing_variants + '"') else ""} \
      ~{if defined(output_file_containing_aberrant_junctions_bed) then ("-j " +  '"' + output_file_containing_aberrant_junctions_bed + '"') else ""} \
      ~{if defined(strand_specificity_rna) then ("-s " +  '"' + strand_specificity_rna + '"') else ""} \
      ~{if defined(tag_used_label) then ("-t " +  '"' + tag_used_label + '"') else ""} \
      ~{if defined(minimum_anchor_length) then ("-a " +  '"' + minimum_anchor_length + '"') else ""} \
      ~{if defined(minimum_intron_length) then ("-m " +  '"' + minimum_intron_length + '"') else ""} \
      ~{if defined(maximum_intron_length) then ("-M " +  '"' + maximum_intron_length + '"') else ""} \
      ~{if defined(window_size_identify) then ("-w " +  '"' + window_size_identify + '"') else ""} \
      ~{if defined(maximum_distance_exonic) then ("-e " +  '"' + maximum_distance_exonic + '"') else ""} \
      ~{if defined(maximum_distance_intronic) then ("-i " +  '"' + maximum_distance_intronic + '"') else ""} \
      ~{if (annotate_variants_intronic) then "-I" else ""} \
      ~{if (annotate_variants_used) then "-E" else ""} \
      ~{if (skip_single_transcripts) then "-S" else ""}
  >>>
  parameter_meta {
    output_file_containing_aberrant_splice_junctions: "Output file containing the aberrant splice junctions with annotations. [STDOUT]"
    output_file_containing_variants: "Output file containing variants annotated as splice relevant (VCF format)."
    output_file_containing_aberrant_junctions_bed: "Output file containing the aberrant junctions in BED12 format."
    strand_specificity_rna: "Strand specificity of RNA library preparation\\n(0 = unstranded, 1 = first-strand/RF, 2, = second-strand/FR). REQUIRED"
    tag_used_label: "Tag used in bam to label strand. [XS]"
    minimum_anchor_length: "Minimum anchor length. Junctions which satisfy a minimum\\nanchor length on both sides are reported. [8]"
    minimum_intron_length: "Minimum intron length. [70]"
    maximum_intron_length: "Maximum intron length. [500000]"
    window_size_identify: "Window size in b.p to identify splicing events in.\\nThe tool identifies events in variant.start +/- w basepairs.\\nDefault behaviour is to look at the window between previous and next exons."
    maximum_distance_exonic: "Maximum distance from the start/end of an exon\\nto annotate a variant as relevant to splicing, the variant\\nis in exonic space, i.e a coding variant. [3]"
    maximum_distance_intronic: "Maximum distance from the start/end of an exon\\nto annotate a variant as relevant to splicing, the variant\\nis in intronic space. [2]"
    annotate_variants_intronic: "Annotate variants in intronic space within a transcript(not to be used with -i)."
    annotate_variants_used: "Annotate variants in exonic space within a transcript(not to be used with -e)."
    skip_single_transcripts: "Don't skip single exon transcripts."
    variants_dot_vcf: ""
    alignments_dot_bam: ""
    ref_dot_fa: ""
    annotations_dot_gtf: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_containing_aberrant_splice_junctions = "${in_output_file_containing_aberrant_splice_junctions}"
    File out_output_file_containing_variants = "${in_output_file_containing_variants}"
    File out_output_file_containing_aberrant_junctions_bed = "${in_output_file_containing_aberrant_junctions_bed}"
  }
}