version 1.0

task Seq2cov.pl {
  input {
    String? regular_expression_extract
    String? mutual_exclusive_set
    String? indexed_bam_file
    String? the_column_chr
    String? column_region_start
    String? column_region_end
    String? column_segment_starts
    String? column_segment_ends
    String? column_gene_name
    String? number_nucleotide_extend
    Boolean? indicate_default_based
  }
  command <<<
    seq2cov.pl \
      ~{if defined(regular_expression_extract) then ("-n " +  '"' + regular_expression_extract + '"') else ""} \
      ~{if defined(mutual_exclusive_set) then ("-N " +  '"' + mutual_exclusive_set + '"') else ""} \
      ~{if defined(indexed_bam_file) then ("-b " +  '"' + indexed_bam_file + '"') else ""} \
      ~{if defined(the_column_chr) then ("-c " +  '"' + the_column_chr + '"') else ""} \
      ~{if defined(column_region_start) then ("-S " +  '"' + column_region_start + '"') else ""} \
      ~{if defined(column_region_end) then ("-E " +  '"' + column_region_end + '"') else ""} \
      ~{if defined(column_segment_starts) then ("-s " +  '"' + column_segment_starts + '"') else ""} \
      ~{if defined(column_segment_ends) then ("-e " +  '"' + column_segment_ends + '"') else ""} \
      ~{if defined(column_gene_name) then ("-g " +  '"' + column_gene_name + '"') else ""} \
      ~{if defined(number_nucleotide_extend) then ("-x " +  '"' + number_nucleotide_extend + '"') else ""} \
      ~{true="-z" false="" indicate_default_based}
  >>>
  parameter_meta {
    regular_expression_extract: "The regular expression to extract sample name from bam filename"
    mutual_exclusive_set: "Mutual exclusive to -n.  Set the sample name to name"
    indexed_bam_file: "The indexed BAM file"
    the_column_chr: "The column for chr"
    column_region_start: "The column for region start, e.g. gene start"
    column_region_end: "The column for region end, e.g. gene end"
    column_segment_starts: "The column for segment starts in the region, e.g. exon starts"
    column_segment_ends: "The column for segment ends in the region, e.g. exon ends"
    column_gene_name: "The column for gene name"
    number_nucleotide_extend: "The number of nucleotide to extend for each segment, default: 0"
    indicate_default_based: "Indicate whether it's zero based numbering, default is 1-based"
  }
}