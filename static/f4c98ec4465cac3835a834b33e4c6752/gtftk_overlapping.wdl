version 1.0

task GtftkOverlapping {
  input {
    Boolean? annotate_gtf
    Boolean? input_file
    File? output_file
    Boolean? chrom_info
    Boolean? upstream
    Boolean? downstream
    Boolean? feature_type
    Boolean? same_stranded_ness
    Boolean? diff_stranded_ness
    Boolean? invert_match
    Boolean? key_name
    Boolean? bool
    Boolean? annotate_all
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
    gtftk overlapping \
      ~{arguments} \
      ~{if (annotate_gtf) then "--annotate-gtf" else ""} \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (chrom_info) then "--chrom-info" else ""} \
      ~{if (upstream) then "--upstream" else ""} \
      ~{if (downstream) then "--downstream" else ""} \
      ~{if (feature_type) then "--feature-type" else ""} \
      ~{if (same_stranded_ness) then "--same-strandedness" else ""} \
      ~{if (diff_stranded_ness) then "--diff-strandedness" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (key_name) then "--key-name" else ""} \
      ~{if (bool) then "--bool" else ""} \
      ~{if (annotate_all) then "--annotate-all" else ""} \
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
    annotate_gtf: "All lines of the original GTF will be printed. (default: False)"
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    chrom_info: "Chromosome information. A tabulated two-columns file with chromosomes as column 1 and sizes as column 2 (default: None)"
    upstream: "Extend the region in 5'. Used to define the region around the TSS/TTS. (default: 1500)"
    downstream: "Extend the region in 3'. Used to define the region around the TSS/TTS. (default: 1500)"
    feature_type: "The feature of interest. (default: transcript)"
    same_stranded_ness: "Require same strandedness (default: False)"
    diff_stranded_ness: "Require different strandedness (default: False)"
    invert_match: "Not/Invert match. (default: False)"
    key_name: "The name of the key. (default: None)"
    bool: "When --annotate-gtf is used use 0 or 1 as key values (instead of overlapping transcripts id). (default: False)"
    annotate_all: "When --annotate-gtf annotate all transcripts (default value would be '0'). (default: False)"
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