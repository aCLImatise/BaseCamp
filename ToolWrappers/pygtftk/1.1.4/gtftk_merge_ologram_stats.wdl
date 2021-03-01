version 1.0

task GtftkMergeOlogramStats {
  input {
    File? pdf_width
    File? pdf_height
    Boolean? pdf_file_name
    Boolean? labels
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    String o_log_ram_dot
    Int arguments
    String input_files
  }
  command <<<
    gtftk merge_ologram_stats \
      ~{o_log_ram_dot} \
      ~{arguments} \
      ~{input_files} \
      ~{if (pdf_width) then "--pdf-width" else ""} \
      ~{if (pdf_height) then "--pdf-height" else ""} \
      ~{if (pdf_file_name) then "--output" else ""} \
      ~{if (labels) then "--labels" else ""} \
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
    pdf_width: "Output pdf file width (inches). (default: None)"
    pdf_height: "Output pdf file height (inches). (default: None)"
    pdf_file_name: "Pdf file name. (default: None)"
    labels: "A comma separated list of labels. (default: None)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    o_log_ram_dot: "Notes:"
    arguments: "Arguments:"
    input_files: "Complete paths to the OLOGRAM output files"
  }
  output {
    File out_stdout = stdout()
    File out_pdf_width = "${in_pdf_width}"
    File out_pdf_height = "${in_pdf_height}"
    File out_no_date = "${in_no_date}"
  }
}