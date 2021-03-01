version 1.0

task GtftkRandomList {
  input {
    Boolean? input_file
    File? output_file
    Boolean? number
    Boolean? ft_type
    Boolean? seed_value
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
    gtftk random_list \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (ft_type) then "--ft-type" else ""} \
      ~{if (seed_value) then "--seed-value" else ""} \
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
    number: "The number of transcripts or gene to select. (default: 1)"
    ft_type: "The type of feature. (default: transcript)"
    seed_value: "Seed value for the random number generator. (default: None)"
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