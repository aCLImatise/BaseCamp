version 1.0

task Bam2svgsh {
  input {
    Boolean? filter
    Boolean? group_by
    Boolean? help_format
    File? output_file_optional
    Boolean? reference
    Boolean? show_clipping
    Boolean? vcf
    Boolean? width
    String files
  }
  command <<<
    bam2svg_sh \
      ~{files} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (group_by) then "--groupby" else ""} \
      ~{if (help_format) then "--helpFormat" else ""} \
      ~{if (output_file_optional) then "--output" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (show_clipping) then "--showclipping" else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (width) then "--width" else ""}
  >>>
  parameter_meta {
    filter: "A filter expression. Reads matching the expression will be filtered-out.\\nEmpty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj\\nfor a complete syntax.\\nDefault: Accept All/ Filter out nothing"
    group_by: "Group Reads by. Data partitioning using the SAM Read Group (see\\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/ ) . It can\\nbe any combination of sample, library....\\nDefault: sample\\nPossible Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center, sample_by_platform_by_center, any]"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    output_file_optional: "Output file. Optional . Default: stdout"
    reference: "Indexed fasta Reference file. This file must be indexed with samtools\\nfaidx and with picard CreateSequenceDictionary"
    show_clipping: "Show clipping\\nDefault: false"
    vcf: "add VCF indexed with tabix. Optinal. the Samples's name must be the same\\nthan in the BAM\\nDefault: []"
    width: "Page width\\nDefault: 1000\\n"
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}