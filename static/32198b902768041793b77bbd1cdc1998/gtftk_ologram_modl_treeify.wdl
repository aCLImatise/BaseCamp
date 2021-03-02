version 1.0

task GtftkOlogramModlTreeify {
  input {
    File? input_file
    Boolean? pdf_file_name
    Boolean? query_label
    Boolean? top_s
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    String o_log_ram_dot
    String visualisation_dot
    Int arguments
  }
  command <<<
    gtftk ologram_modl_treeify \
      ~{o_log_ram_dot} \
      ~{visualisation_dot} \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (pdf_file_name) then "--output" else ""} \
      ~{if (query_label) then "--query-label" else ""} \
      ~{if (top_s) then "--top-s" else ""} \
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
    input_file: "Complete path to the OLOGRAM output file (default: None)"
    pdf_file_name: "Pdf file name (default: None)"
    query_label: "Name of the query for display (default: Query)"
    top_s: "Optional. Only the top t combinations sorted by total basepairs in real data will be displayed. (default: -1)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    o_log_ram_dot: "Notes:"
    visualisation_dot: "*  This is the preferred representation for OLOGRAM-MODL results. Each node represents  a"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_input_file = "${in_input_file}"
    File out_no_date = "${in_no_date}"
  }
}