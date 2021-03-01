version 1.0

task FGAP {
  input {
    Boolean? draft_file
    Boolean? datasets_files
    Boolean? min_score
    Boolean? max_evalue
    Boolean? min_identity
    Int? contig_end_length
    Boolean? edge_trim_length
    Int? max_remove_length
    Int? max_insert_length
    Boolean? positive_gap
    Boolean? zero_gap
    Boolean? negative_gap
    Boolean? gap_char
    Boolean? blast_path
    Boolean? blast_alignment_parameters
    Boolean? blast_max_results
    Boolean? threads
    Boolean? more_output
    File? output_prefix
  }
  command <<<
    FGAP \
      ~{if (draft_file) then "--draft-file" else ""} \
      ~{if (datasets_files) then "--datasets-files" else ""} \
      ~{if (min_score) then "--min-score" else ""} \
      ~{if (max_evalue) then "--max-evalue" else ""} \
      ~{if (min_identity) then "--min-identity" else ""} \
      ~{if defined(contig_end_length) then ("--contig-end-length " +  '"' + contig_end_length + '"') else ""} \
      ~{if (edge_trim_length) then "--edge-trim-length" else ""} \
      ~{if defined(max_remove_length) then ("--max-remove-length " +  '"' + max_remove_length + '"') else ""} \
      ~{if defined(max_insert_length) then ("--max-insert-length " +  '"' + max_insert_length + '"') else ""} \
      ~{if (positive_gap) then "--positive-gap" else ""} \
      ~{if (zero_gap) then "--zero-gap" else ""} \
      ~{if (negative_gap) then "--negative-gap" else ""} \
      ~{if (gap_char) then "--gap-char" else ""} \
      ~{if (blast_path) then "--blast-path" else ""} \
      ~{if (blast_alignment_parameters) then "--blast-alignment-parameters" else ""} \
      ~{if (blast_max_results) then "--blast-max-results" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (more_output) then "--more-output" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    draft_file: "Draft genome file [fasta format - Ex: 'draft.fasta']"
    datasets_files: "List of datasets files to close gaps [fasta format - Ex: 'dataset1.fasta,dataset2.fasta']"
    min_score: "Min Score (raw) to return results from BLAST (integer) - Default: 25"
    max_evalue: "Max E-Value to return results from BLAST (float) - Default: 1e-7"
    min_identity: "Min identity (%) to return results from BLAST (integer [0-100]) - Default: 70"
    contig_end_length: "(bp) of contig ends to perform BLAST alignment (integer) - Default: 300"
    edge_trim_length: "Length of ignored bases (bp) upstream and downstrem of the gap (integer) - Default: 0"
    max_remove_length: "number of bases (bp) that can be removed (integer) - Default: 500"
    max_insert_length: "number of bases (bp) that can be inserted (integer) - Default: 500"
    positive_gap: "Enable closing of positive gaps (with insertion) (integer [0-1]) - Default: 1"
    zero_gap: "Enable closing of zero gaps (without insert any base) (integer [0-1]) - Default: 0"
    negative_gap: "Enable closing of negative gaps (overlapping contig ends) (integer [0-1]) - Default: 0"
    gap_char: "Base that represents the gap (char) - Default: 'N'"
    blast_path: "Blast+ package path (only makeblastdb and blastn are needed, version 2.2.28+ or higher) - Default: ''"
    blast_alignment_parameters: "BLAST alignment parameters (opengap,extendgap,match,mismatch,wordsize) - Default: '1,1,1,-3,15'"
    blast_max_results: "Max results from BLAST for each query (integer) - Default: 200"
    threads: "Number of threads (integer) - Default: 1"
    more_output: "More output files with gap regions after and before gap closing (integer [0-1]) - Default: 0"
    output_prefix: "Output prefix [File or folder - Ex: 'out' or 'out_folder/out' ] - Default: 'output_fgap'"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
  }
}