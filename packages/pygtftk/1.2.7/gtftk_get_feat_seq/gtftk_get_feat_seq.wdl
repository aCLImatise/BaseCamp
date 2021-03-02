version 1.0

task GtftkGetFeatSeq {
  input {
    Boolean? input_file
    File? output_file
    Boolean? genome
    Boolean? separator
    Boolean? label
    Boolean? feature_type
    Boolean? no_rev_comp
    Boolean? rev_comp_to_header
    Boolean? unique
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
  }
  command <<<
    gtftk get_feat_seq \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (feature_type) then "--feature-type" else ""} \
      ~{if (no_rev_comp) then "--no-rev-comp" else ""} \
      ~{if (rev_comp_to_header) then "--rev-comp-to-header" else ""} \
      ~{if (unique) then "--unique" else ""} \
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
    output_file: "Output FASTA file. (default: <stdout>)"
    genome: "The genome in fasta format. (default: None)"
    separator: "To separate info in header. (default: |)"
    label: "A set of key for the header that will be extracted from the transcript line. (default: feature,transcript_id,gene_id,seqid,start,end)"
    feature_type: "The feature type (one defined in column 3). (default: exon)"
    no_rev_comp: "Don't reverse complement sequence corresponding to gene on minus strand. (default: False)"
    rev_comp_to_header: "Indicate in the header whether sequence was rev-complemented. (default: False)"
    unique: "Don't write redondant IDS. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}