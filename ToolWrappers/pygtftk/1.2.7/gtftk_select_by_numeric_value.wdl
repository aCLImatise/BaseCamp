version 1.0

task GtftkSelectByNumericValue {
  input {
    Boolean? input_file
    File? output_file
    Boolean? test
    Boolean? na_omit
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
    gtftk select_by_numeric_value \
      ~{optional_arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (na_omit) then "--na-omit" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1"
  }
  parameter_meta {
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    test: "The test to be applied. (default: None)"
    na_omit: "If one of the evaluated values is enclosed in this list (csv), line is skipped. (default: None)"
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