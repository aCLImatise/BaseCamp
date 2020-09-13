version 1.0

task GtftkGet5p3pCoords {
  input {
    Boolean? input_file
    File? output_file
    Boolean? ft_type
    Boolean? invert
    Boolean? transpose
    Boolean? names
    Boolean? more_names
    Boolean? separator
    Boolean? explicit
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
    gtftk get_5p_3p_coords \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (ft_type) then "--ft-type" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if (transpose) then "--transpose" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (more_names) then "--more-names" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (explicit) then "--explicit" else ""} \
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
    output_file: "Output file (BED). (default: <stdout>)"
    ft_type: "The target feature (as found in the 3rd column of the GTF). (default: transcript)"
    invert: "Get 3' coordinate. (default: False)"
    transpose: "Transpose coordinate in 5' (use negative value) or in 3' (use positive values). (default: 0)"
    names: "The key(s) that should be used as name. (default: gene_id,transcript_id)"
    more_names: "A comma-separated list of information to be added to the 'name' column of the bed file. (default: None)"
    separator: "The separator to be used for separating name elements (see -n). (default: |)"
    explicit: "Write explicitly the name of the keys in the header. (default: False)"
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