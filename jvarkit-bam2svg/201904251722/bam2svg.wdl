version 1.0

task Bam2svg.sh {
  input {
    Boolean? filter
    Boolean? group_by
    Boolean? help_format
    Boolean? output_file_optional
    Boolean? reference
    Boolean? show_clipping
    Boolean? vcf
    Boolean? width
    File files
  }
  command <<<
    bam2svg.sh \
      ~{files} \
      ~{true="--filter" false="" filter} \
      ~{true="--groupby" false="" group_by} \
      ~{true="--helpFormat" false="" help_format} \
      ~{true="--output" false="" output_file_optional} \
      ~{true="--reference" false="" reference} \
      ~{true="--showclipping" false="" show_clipping} \
      ~{true="--vcf" false="" vcf} \
      ~{true="--width" false="" width}
  >>>
  parameter_meta {
    filter: "A filter expression. Reads matching the expression will be filtered-out.  Empty String means 'filter out nothing/Accept all'. See https://github.com/lindenb/jvarkit/blob/master/src/main/resources/javacc/com/github/lindenb/jvarkit/util/bio/samfilter/SamFilterParser.jj  for a complete syntax. Default: Accept All/ Filter out nothing"
    group_by: "Group Reads by. Data partitioning using the SAM Read Group (see  https://gatkforums.broadinstitute.org/gatk/discussion/6472/ ) . It can  be any combination of sample, library.... Default: sample Possible Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center, sample_by_platform_by_center, any]"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    output_file_optional: "Output file. Optional . Default: stdout"
    reference: "Indexed fasta Reference file. This file must be indexed with samtools  faidx and with picard CreateSequenceDictionary"
    show_clipping: "Show clipping Default: false"
    vcf: "add VCF indexed with tabix. Optinal. the Samples's name must be the same  than in the BAM Default: []"
    width: "Page width Default: 1000"
    files: ""
  }
}