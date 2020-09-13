version 1.0

task GtftkColFromTab {
  input {
    Boolean? input_file
    File? output_file
    Boolean? columns
    Boolean? invert_match
    Boolean? unique
    Boolean? separator
    Boolean? no_header
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
    gtftk col_from_tab \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (columns) then "--columns" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    input_file: "The tabulated file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    columns: "The list (csv) of column names. (default: None)"
    invert_match: "Not/invert match. (default: False)"
    unique: "Write non redondant lines. (default: False)"
    separator: "The separator to be used for separating name elements (see -n). (default: )"
    no_header: "Don't print the header line. (default: False)"
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