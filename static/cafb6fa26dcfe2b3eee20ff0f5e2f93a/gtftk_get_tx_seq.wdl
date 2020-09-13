version 1.0

task GtftkGetTxSeq {
  input {
    Boolean? input_file
    File? output_file
    Boolean? genome
    Boolean? with_introns
    Boolean? separator
    Boolean? label
    Boolean? sleuth_format
    Boolean? delete_version
    Boolean? assembly
    Boolean? del_chr
    Boolean? no_rev_comp
    Boolean? explicit
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
  }
  command <<<
    gtftk get_tx_seq \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (with_introns) then "--with-introns" else ""} \
      ~{if (separator) then "--separator" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (sleuth_format) then "--sleuth-format" else ""} \
      ~{if (delete_version) then "--delete-version" else ""} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if (del_chr) then "--del-chr" else ""} \
      ~{if (no_rev_comp) then "--no-rev-comp" else ""} \
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
    output_file: "Output FASTA file. (default: <stdout>)"
    genome: "The genome in fasta format. Accept path with wildcards (e.g. *.fa). (default: None)"
    with_introns: "Set to true to include intronic regions. (default: False)"
    separator: "To separate info in header. (default: |)"
    label: "A set of key for the header. (default: feature,transcript_id,gene_id,seqid,start,end)"
    sleuth_format: "Produce output in sleuth format (still experimental). (default: False)"
    delete_version: "In case of --sleuth-format, delete gene_id or transcript_id version number (e.g '.2' in ENSG56765.2). (default: False)"
    assembly: "In case of --sleuth-format, an assembly version. (default: GRCm38)"
    del_chr: "When using --sleuth-format delete 'chr' in sequence id. (default: False)"
    no_rev_comp: "Don't reverse complement sequence corresponding to gene on minus strand. (default: False)"
    explicit: "Write explicitly the name of the keys in the header. (default: False)"
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