version 1.0

task GtftkIntronic {
  input {
    Boolean? input_file
    File? output_file
    Boolean? by_transcript
    Boolean? names
    Boolean? separator
    Boolean? intron_nb_in_name
    Boolean? no_feature_name
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
    gtftk intronic \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (by_transcript) then "--by-transcript" else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (intron_nb_in_name) then "--intron-nb-in-name" else ""} \
      ~{if (no_feature_name) then "--no-feature-name" else ""} \
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
    output_file: "Output file (BED). (default: <stdout>)"
    by_transcript: "The intronic regions are returned for each transcript. (default: False)"
    names: "The key(s) that should be used as name (if -b is used). (default: gene_id,transcript_id)"
    separator: "The separator to be used for separating name elements (if -b is used). (default: |)"
    intron_nb_in_name: "By default intron number is written in 'score' column. Force it to be written in 'name' column. (default: False)"
    no_feature_name: "Don't add the feature name ('intron') in the name column. (default: False)"
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