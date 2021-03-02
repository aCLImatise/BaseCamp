version 1.0

task Anvireportlinkmers {
  input {
    String? s_sorted_files
    File? contigs_and_positions
    Boolean? only_complete_links
    File? output_file
    Boolean? list_contigs
    File bam_file
    String link_mers_txt
  }
  command <<<
    anvi_report_linkmers \
      ~{bam_file} \
      ~{link_mers_txt} \
      ~{if defined(s_sorted_files) then ("-i " +  '"' + s_sorted_files + '"') else ""} \
      ~{if defined(contigs_and_positions) then ("--contigs-and-positions " +  '"' + contigs_and_positions + '"') else ""} \
      ~{if (only_complete_links) then "--only-complete-links" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (list_contigs) then "--list-contigs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    s_sorted_files: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\\nSorted and indexed BAM files to analyze. It is\\nessential that all BAM files must be the result of\\nmappings against the same contigs. (default: None)"
    contigs_and_positions: "This is the file where you list the contigs, and\\nnucleotide positions you are interested in. This is\\nsupposed to be a TAB-delimited file with two columns.\\nIn each line, the first column should be the contig\\nname, and the second column should be the comma-\\nseparated list of integers for nucleotide positions.\\n(default: None)"
    only_complete_links: "When declared, only reads that cover all positions\\nwill be reported. It is necessary to use this flag if\\nyou want to perform oligotyping-like analyses on\\nmatching reads. (default: False)"
    output_file: "File path to store results. (default: None)"
    list_contigs: "When declared, the program will list contigs in the\\nBAM file and exit gracefully without any further\\nanalysis. (default: False)"
    bam_file: "🍕 Can provide: "
    link_mers_txt: "🍺 More on `anvi-report-linkmers`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}