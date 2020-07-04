version 1.0

task AnviReportLinkmers {
  input {
    String? s_sorted_indexed
    String? contigs_and_positions
    Boolean? only_complete_links
    File? output_file
    Boolean? list_contigs
  }
  command <<<
    anvi-report-linkmers \
      ~{if defined(s_sorted_indexed) then ("-i " +  '"' + s_sorted_indexed + '"') else ""} \
      ~{if defined(contigs_and_positions) then ("--contigs-and-positions " +  '"' + contigs_and_positions + '"') else ""} \
      ~{true="--only-complete-links" false="" only_complete_links} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--list-contigs" false="" list_contigs}
  >>>
  parameter_meta {
    s_sorted_indexed: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...] Sorted and indexed BAM files to analyze. It is essential that all BAM files must be the result of mappings against the same contigs."
    contigs_and_positions: "This is the file where you list the contigs, and nucleotide positions you are interested in. This is supposed to be a TAB-delimited file with two columns. In each line, the first column should be the contig name, and the second column should be the comma- separated list of integers for nucleotide positions."
    only_complete_links: "When declared, only reads that cover all positions will be reported. It is necessary to use this flag if you want to perform oligotyping-like analyses on matching reads."
    output_file: "File path to store results."
    list_contigs: "When declared, the program will list contigs in the BAM file and exit gracefully without any further analysis."
  }
}