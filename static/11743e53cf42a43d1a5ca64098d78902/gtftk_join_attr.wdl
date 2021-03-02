version 1.0

task GtftkJoinAttr {
  input {
    Boolean? input_file
    File? output_file
    Boolean? key_to_join
    Boolean? join_file
    Boolean? has_header
    Boolean? matrix
    Boolean? new_key
    Boolean? target_feature
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
    gtftk join_attr \
      ~{arguments} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (key_to_join) then "--key-to-join" else ""} \
      ~{if (join_file) then "--join-file" else ""} \
      ~{if (has_header) then "--has-header" else ""} \
      ~{if (matrix) then "--matrix" else ""} \
      ~{if (new_key) then "--new-key" else ""} \
      ~{if (target_feature) then "--target-feature" else ""} \
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
    key_to_join: "The name of the key used to join (e.g transcript_id). (default: None)"
    join_file: "A two columns file with (i) the value for joining (e.g value for transcript_id), (ii) the value for novel key (e.g the coding potential computed value). (default: None)"
    has_header: "Indicates that the 'join-file' has a header. (default: False)"
    matrix: "'join-file' expect a matrix with row names as target keys column names as novel key and each cell as value. (default: False)"
    new_key: "The name of the novel key. Mutually exclusive with --matrix. (default: None)"
    target_feature: "The name(s) of the target feature(s). comma-separated. (default: None)"
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