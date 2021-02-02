version 1.0

task GtftkTssNumbering {
  input {
    Boolean? input_file
    File? output_file
    Boolean? key_name
    Boolean? compute_dist
    Boolean? key_name_dist
    Boolean? add_nb_tss_to_gene
    Boolean? gene_key
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
    gtftk tss_numbering \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (key_name) then "--key-name" else ""} \
      ~{if (compute_dist) then "--compute-dist" else ""} \
      ~{if (key_name_dist) then "--key-name-dist" else ""} \
      ~{if (add_nb_tss_to_gene) then "--add-nb-tss-to-gene" else ""} \
      ~{if (gene_key) then "--gene-key" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    input_file: "Path to the GTF file. Default to STDIN. (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    key_name: "The name of the new key. (default: tss_number)"
    compute_dist: "Add a key indicating the distance to the first tss (the most 5'). (default: False)"
    key_name_dist: "If --compute-dist is true a name for that key. (default: dist_to_first_tss)"
    add_nb_tss_to_gene: "Add the number of different tss to each gene (default: False)"
    gene_key: "The name of the key if --add-nb-tss-to-gene is selected. (default: nb_tss)"
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