version 1.0

task GtftkDiscretizeKey {
  input {
    Boolean? input_file
    File? output_file
    Boolean? src_key
    Boolean? dest_key
    Boolean? nb_levels
    Boolean? labels
    Boolean? percentiles
    Boolean? log
    Boolean? percentiles_of_uniq
    Boolean? precision
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
    gtftk discretize_key \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (src_key) then "--src-key" else ""} \
      ~{if (dest_key) then "--dest-key" else ""} \
      ~{if (nb_levels) then "--nb-levels" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (percentiles) then "--percentiles" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if (percentiles_of_uniq) then "--percentiles-of-uniq" else ""} \
      ~{if (precision) then "--precision" else ""} \
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
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    src_key: "The name of the source key (default: None)"
    dest_key: "The name of the target key. (default: None)"
    nb_levels: "The number of levels/classes to create. (default: 2)"
    labels: "A comma-separated list of labels of size --nb-levels. (default: None)"
    percentiles: "Compute --nb-levels classes using percentiles. (default: False)"
    log: "Compute breaks based on log-scale. (default: False)"
    percentiles_of_uniq: "Compute percentiles based on non-redondant values. (default: False)"
    precision: "The precision used in naming intervals. (default: 2)"
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