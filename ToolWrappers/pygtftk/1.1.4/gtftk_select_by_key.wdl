version 1.0

task GtftkSelectByKey {
  input {
    Boolean? value
    Boolean? file_with_values
    Boolean? select_transcripts
    Boolean? select_genes
    Boolean? select_exons
    Boolean? select_cds
    Boolean? select_start_codon
    Boolean? input_file
    File? output_file
    Boolean? key
    Boolean? col
    Boolean? invert_match
    Boolean? bed_format
    Boolean? names
    Boolean? separator
    Boolean? log
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
    gtftk select_by_key \
      ~{optional_arguments} \
      ~{if (value) then "--value" else ""} \
      ~{if (file_with_values) then "--file-with-values" else ""} \
      ~{if (select_transcripts) then "--select-transcripts" else ""} \
      ~{if (select_genes) then "--select-genes" else ""} \
      ~{if (select_exons) then "--select-exons" else ""} \
      ~{if (select_cds) then "--select-cds" else ""} \
      ~{if (select_start_codon) then "--select-start-codon" else ""} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (key) then "--key" else ""} \
      ~{if (col) then "--col" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (bed_format) then "--bed-format" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (log) then "--log" else ""} \
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
    value: "A comma-separated list of values. (default: None)"
    file_with_values: "A file containing values as a single column. (default: None)"
    select_transcripts: "A shortcuts for \\\"-k feature -v transcript\\\". (default: False)"
    select_genes: "A shortcuts for \\\"-k feature -v gene\\\". (default: False)"
    select_exons: "A shortcuts for \\\"-k feature -v exon\\\". (default: False)"
    select_cds: "A shortcuts for \\\"-k feature -v CDS\\\". (default: False)"
    select_start_codon: "A shortcuts for \\\"-k feature -v start_codon\\\". (default: False)"
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    key: "The key name. (default: None)"
    col: "The column number (one-based) that contains the values in the file. File is tab-delimited. (default: 1)"
    invert_match: "Not/invert match. Select lines whose selected key is not associated with the selected values. (default: False)"
    bed_format: "Ask for bed format output. (default: False)"
    names: "If Bed output. The key(s) that should be used as name. (default: gene_id,transcript_id)"
    separator: "If Bed output. The separator to be used for separating name elements (see -n). (default: |)"
    log: "Print some statistics about selected features. To be used in conjunction with -V 1/2. (default: False)"
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