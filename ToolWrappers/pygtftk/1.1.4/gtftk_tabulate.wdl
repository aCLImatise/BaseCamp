version 1.0

task GtftkTabulate {
  input {
    Boolean? select_transcript_ids
    Boolean? select_gene_ids
    Boolean? select_gene_names
    Boolean? select_exon_ids
    Boolean? input_file
    File? output_file
    Boolean? separator
    Boolean? key
    Boolean? unique
    Boolean? no_header
    Boolean? no_unset
    Boolean? accept_undef
    Boolean? no_basic
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
    gtftk tabulate \
      ~{optional_arguments} \
      ~{if (select_transcript_ids) then "--select-transcript-ids" else ""} \
      ~{if (select_gene_ids) then "--select-gene_ids" else ""} \
      ~{if (select_gene_names) then "--select-gene-names" else ""} \
      ~{if (select_exon_ids) then "--select-exon-ids" else ""} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (no_unset) then "--no-unset" else ""} \
      ~{if (accept_undef) then "--accept-undef" else ""} \
      ~{if (no_basic) then "--no-basic" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    select_transcript_ids: "A shortcuts for \\\"-k transcript_id\\\". (default: False)"
    select_gene_ids: "A shortcuts for \\\"-k gene_id\\\". (default: False)"
    select_gene_names: "A shortcuts for \\\"-k gene_name\\\". (default: False)"
    select_exon_ids: "A shortcuts for \\\"-k exon_ids\\\". (default: False)"
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    separator: "The output field separator. (default: )"
    key: "A comma-separated list of key names. (default: *)"
    unique: "Print a non redondant list of lines. (default: False)"
    no_header: "Don't print the header line. (default: False)"
    no_unset: "Don't print lines containing '.' (unset values) (default: False)"
    accept_undef: "Print line for which the key is undefined (i.e, '?', does not exists). (default: False)"
    no_basic: "In case key is set to 'all' or '*', don't write basic attributes. (default: False)"
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