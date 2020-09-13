version 1.0

task GtftkClosestGenes {
  input {
    Boolean? input_file
    File? output_file
    Boolean? from_region_type
    Boolean? nb_neighbors
    Boolean? to_region_type
    Boolean? same_stranded_ness
    Boolean? diff_stranded_ness
    Boolean? text_format
    Boolean? no_header
    Boolean? collapse
    Boolean? identifier
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int optional_arguments
  }
  command <<<
    gtftk closest_genes \
      ~{optional_arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (from_region_type) then "--from-region-type" else ""} \
      ~{if (nb_neighbors) then "--nb-neighbors" else ""} \
      ~{if (to_region_type) then "--to-region-type" else ""} \
      ~{if (same_stranded_ness) then "--same-strandedness" else ""} \
      ~{if (diff_stranded_ness) then "--diff-strandedness" else ""} \
      ~{if (text_format) then "--text-format" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (collapse) then "--collapse" else ""} \
      ~{if (identifier) then "--identifier" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    from_region_type: "What is region to consider for each gene. (default: tss)"
    nb_neighbors: "The size of the neighborhood. (default: 1)"
    to_region_type: "What is region to consider for each closest gene. (default: tss)"
    same_stranded_ness: "Require same strandedness (default: False)"
    diff_stranded_ness: "Require different strandedness (default: False)"
    text_format: "Return a text format. (default: False)"
    no_header: "Don't print the header line. (default: False)"
    collapse: "Unwrap. Don't use comma. Print closest genes line by line. (default: False)"
    identifier: "The key used as gene identifier. (default: gene_id)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}