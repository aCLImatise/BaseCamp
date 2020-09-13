version 1.0

task Seq2covpl {
  input {
    String? this_help
    Int? floatindicate_amplicon_based
    File? regular_expression_extract
    String? mutual_exclusive_n
    File? indexed_bam_file
    String? the_column_chr
    String? column_region_start
    String? column_region_end
    String? column_segment_starts
    String? column_segment_ends
    String? column_gene_name
    Int? number_nucleotide_extend
    Boolean? indicate_default_based
  }
  command <<<
    seq2cov_pl \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""} \
      ~{if defined(floatindicate_amplicon_based) then ("-a " +  '"' + floatindicate_amplicon_based + '"') else ""} \
      ~{if defined(regular_expression_extract) then ("-n " +  '"' + regular_expression_extract + '"') else ""} \
      ~{if defined(mutual_exclusive_n) then ("-N " +  '"' + mutual_exclusive_n + '"') else ""} \
      ~{if defined(indexed_bam_file) then ("-b " +  '"' + indexed_bam_file + '"') else ""} \
      ~{if defined(the_column_chr) then ("-c " +  '"' + the_column_chr + '"') else ""} \
      ~{if defined(column_region_start) then ("-S " +  '"' + column_region_start + '"') else ""} \
      ~{if defined(column_region_end) then ("-E " +  '"' + column_region_end + '"') else ""} \
      ~{if defined(column_segment_starts) then ("-s " +  '"' + column_segment_starts + '"') else ""} \
      ~{if defined(column_segment_ends) then ("-e " +  '"' + column_segment_ends + '"') else ""} \
      ~{if defined(column_gene_name) then ("-g " +  '"' + column_gene_name + '"') else ""} \
      ~{if defined(number_nucleotide_extend) then ("-x " +  '"' + number_nucleotide_extend + '"') else ""} \
      ~{if (indicate_default_based) then "-z" else ""}
  >>>
  parameter_meta {
    this_help: "this help"
    floatindicate_amplicon_based: ":float\\nIndicate that it's PCR amplicon based calling.  Each line in region_info represents a PCR amplicon (including primers).\\nTwo numbers in option are parameter to decide whether a particular read or pairs belongs to the amplicon. First is the\\nnumber of base pairs.  The second is the fraction of overlapped portion to the length of read or pairs.  If the edges of\\nreads (paired for Illumina) are within defined base pairs to the edges of amplicons and overlapped portion greater then\\nthe fraction, it's considered belonging to the amplicon.  Suggested values are: 10:0.95.  When given a 6 column amplicon\\nformat BED files, it'll be set to 10:0.95 automatically, but can still be overwritten by -a option."
    regular_expression_extract: "The regular expression to extract sample name from bam filename"
    mutual_exclusive_n: "Mutual exclusive to -n.  Set the sample name to name"
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
  output {
    File out_stdout = stdout()
  }
}