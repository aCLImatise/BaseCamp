version 1.0

task GtftkFeatureSize {
  input {
    Boolean? input_file
    File? output_file
    Boolean? ft_type
    Boolean? names
    Boolean? key_name
    Boolean? separator
    Boolean? bed
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
    gtftk feature_size \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (ft_type) then "--ft-type" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (key_name) then "--key-name" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (bed) then "--bed" else ""} \
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
    output_file: "Output file (BED). (default: <stdout>)"
    ft_type: "A target feature (as found in the 3rd column of the GTF) or 'mature_rna' to get transcript size (without introns). (default: transcript)"
    names: "The key(s) that should be used as name if bed is requested. (default: transcript_id)"
    key_name: "Name for the new key if GTF format is requested. (default: feat_size)"
    separator: "The separator to be used for separating name elements (see -n). (default: |)"
    bed: "Output bed format. (default: False)"
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