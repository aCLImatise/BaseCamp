version 1.0

task GtftkSelectByGo {
  input {
    Boolean? input_file
    File? output_file
    Boolean? go_id
    Boolean? list_datasets
    Boolean? species
    Boolean? invert_match
    Boolean? http_proxy
    Boolean? https_proxy
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
    gtftk select_by_go \
      ~{optional_arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (go_id) then "--go-id" else ""} \
      ~{if (list_datasets) then "--list-datasets" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (http_proxy) then "--http-proxy" else ""} \
      ~{if (https_proxy) then "--https-proxy" else ""} \
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
    go_id: "The GO ID (with or without \\\"GO:\\\" prefix). (default: GO:0003700)"
    list_datasets: "Do not select lines. Only get a list of available datasets/species. (default: False)"
    species: "The dataset/species. (default: None)"
    invert_match: "Not/invert match. (default: False)"
    http_proxy: "Use this http proxy (not tested/experimental). (default: )"
    https_proxy: "Use this https proxy (not tested/experimental). (default: )"
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