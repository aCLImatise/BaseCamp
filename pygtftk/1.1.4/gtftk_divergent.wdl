version 1.0

task GtftkDivergent {
  input {
    Boolean? input_file
    File? output_file
    Boolean? chrom_info
    Boolean? upstream
    Boolean? downstream
    Boolean? no_annotation
    Boolean? no_strand_ness
    Boolean? key_name
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
  }
  command <<<
    gtftk divergent \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (no_annotation) then "--no-annotation" else ""} \
      ~{if (no_strand_ness) then "--no-strandness" else ""} \
      ~{if (key_name) then "--key-name" else ""} \
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
    chrom_info: "Tabulated two-columns file. Chromosomes as column 1 and their sizes as column 2 (default: None)"
    upstream: "Extend the promoter in 5' by a given value (int). Defines the region around the tss. (default: 1500)"
    downstream: "Extend the region in 3' by a given value (int). Defines the region around the tss. (default: 1500)"
    no_annotation: "Do not annotate the GTF. Just select the divergent transcripts. (default: False)"
    no_strand_ness: "Do not consider strandness (only look whether the promoter from a transcript overlaps with the promoter from another gene). (default: False)"
    key_name: "The name of the key. (default: None)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}