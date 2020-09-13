version 1.0

task GtftkGreatRegDomains {
  input {
    Boolean? input_file
    File? output_file
    Boolean? go_id
    Boolean? species
    Boolean? upstream
    Boolean? downstream
    Boolean? distal
    Boolean? chrom_info
    Boolean? mode
    Boolean? http_proxy
    Boolean? https_proxy
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    String produced
    Int argument
  }
  command <<<
    gtftk great_reg_domains \
      ~{produced} \
      ~{argument} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (go_id) then "--go-id" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (distal) then "--distal" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (mode) then "--mode" else ""} \
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
  parameter_meta {
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    go_id: "The GO ID (e.g GO:0003700). Default is to return all genes. (default: None)"
    species: "The dataset/species. Use select_by_go to get the list of species (default: hsapiens)"
    upstream: "Extend the TSS in 5' by a given value. (default: 5000)"
    downstream: "Extend the TSS 3' by a given value. (default: 1000)"
    distal: "Maximum extension in one direction (default: 1000000)"
    chrom_info: "Tabulated two-columns file. Chromosomes as column 1, sizes as column 2 (default: None)"
    mode: "The type of 'association rule'. (default: basal_plus_extension)"
    http_proxy: "Use this http proxy (not tested/experimental). (default: )"
    https_proxy: "Use this https proxy (not tested/experimental). (default: )"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    produced: "a set of 'labeled' regions with the same rules as those described in GREAT (Genomic"
    argument: "Argument:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}