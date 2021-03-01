version 1.0

task GtftkControlList {
  input {
    Boolean? in_file
    Boolean? reference_gene_file
    Directory? out_dir
    Boolean? log_two
    Boolean? pseudo_count
    File? page_width
    File? page_height
    File? page_format
    Boolean? dpi
    Boolean? skip_first
    Boolean? rug
    Boolean? jitter
    Boolean? user_img_file
    Boolean? set_colors
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
    gtftk control_list \
      ~{optional_arguments} \
      ~{if (in_file) then "--in-file" else ""} \
      ~{if (reference_gene_file) then "--reference-gene-file" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (log_two) then "--log2" else ""} \
      ~{if (pseudo_count) then "--pseudo-count" else ""} \
      ~{if (page_width) then "--page-width" else ""} \
      ~{if (page_height) then "--page-height" else ""} \
      ~{if (page_format) then "--page-format" else ""} \
      ~{if (dpi) then "--dpi" else ""} \
      ~{if (skip_first) then "--skip-first" else ""} \
      ~{if (rug) then "--rug" else ""} \
      ~{if (jitter) then "--jitter" else ""} \
      ~{if (user_img_file) then "--user-img-file" else ""} \
      ~{if (set_colors) then "--set-colors" else ""} \
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
    in_file: "A two columns tab-file. See notes. (default: None)"
    reference_gene_file: "The file containing the reference gene list (1 column, transcript ids). No header. (default: None)"
    out_dir: "Name of the output directory. (default: control_list)"
    log_two: "If selected, data will be log transformed. (default: False)"
    pseudo_count: "The value for a pseudo-count to be added. (default: 0)"
    page_width: "Output pdf file width (e.g. 7 inches). (default: None)"
    page_height: "Output file height (e.g. 5 inches). (default: None)"
    page_format: "Output file format. (default: pdf)"
    dpi: "Dpi to use. (default: 300)"
    skip_first: "Indicates that infile hase a header. (default: False)"
    rug: "Add rugs to the diagram. (default: False)"
    jitter: "Add jittered points. (default: False)"
    user_img_file: "Provide an alternative path for the image. (default: None)"
    set_colors: "Colors for the two sets (comma-separated). (default: #b2df8a,#6a3d9a)"
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
    Directory out_out_dir = "${in_out_dir}"
    File out_page_width = "${in_page_width}"
    File out_page_height = "${in_page_height}"
    File out_page_format = "${in_page_format}"
    File out_no_date = "${in_no_date}"
  }
}