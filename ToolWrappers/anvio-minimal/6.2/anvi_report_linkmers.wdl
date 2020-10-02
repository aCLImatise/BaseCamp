version 1.0

task Anvireportlinkmers {
  input {
    String? contigs_and_positions
    String? s_sorted_indexed
    Boolean? only_complete_links
    File? output_file
    Boolean? list_contigs
  }
  command <<<
    anvi_report_linkmers \
      ~{if defined(contigs_and_positions) then ("--contigs-and-positions " +  '"' + contigs_and_positions + '"') else ""} \
      ~{if defined(s_sorted_indexed) then ("-i " +  '"' + s_sorted_indexed + '"') else ""} \
      ~{if (only_complete_links) then "--only-complete-links" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (list_contigs) then "--list-contigs" else ""}
  >>>
  parameter_meta {
    contigs_and_positions: "[--only-complete-links] -o FILE_PATH\\n[--list-contigs]"
    s_sorted_indexed: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\\nSorted and indexed BAM files to analyze. It is\\nessential that all BAM files must be the result of\\nmappings against the same contigs."
    only_complete_links: "When declared, only reads that cover all positions\\nwill be reported. It is necessary to use this flag if\\nyou want to perform oligotyping-like analyses on\\nmatching reads."
    output_file: "File path to store results."
    list_contigs: "When declared, the program will list contigs in the\\nBAM file and exit gracefully without any further\\nanalysis.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}