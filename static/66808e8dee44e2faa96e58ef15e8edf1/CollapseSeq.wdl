version 1.0

task CollapseSeq.py {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Boolean? inner
    Boolean? keep_miss
    Int? max_f
    Int? minf
    String collapse_unique
    String collapse_duplicate
    String collapse_undetermined
  }
  command <<<
    CollapseSeq.py \
      ~{collapse_unique} \
      ~{collapse_duplicate} \
      ~{collapse_undetermined} \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{true="--inner" false="" inner} \
      ~{true="--keepmiss" false="" keep_miss} \
      ~{if defined(max_f) then ("--maxf " +  '"' + max_f + '"') else ""} \
      ~{if defined(minf) then ("--minf " +  '"' + minf + '"') else ""}
  >>>
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to process. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ. (default: None)"
    delim: "DELIMITER DELIMITER A list of the three delimiters that separate annotation blocks, field names and values, and values within a field, respectively. (default: ('|', '=', ','))"
    inner: "If specified, exclude consecutive missing characters at either end of the sequence. (default: False)"
    keep_miss: "If specified, sequences with more missing characters than the threshold set by the -n parameter will be written to the unique sequence output file with a DUPCOUNT=1 annotation. If not specified, such sequences will be written to a separate file. (default: False)"
    max_f: "Specify the field whose maximum value determines the retained sequence; mutually exclusive with --minf. (default: None)"
    minf: "Specify the field whose minimum value determines the retained sequence; mutually exclusive with --minf. (default: None)"
    collapse_unique: "unique sequences. Contains one representative from each set of duplicate sequences. The retained representative is determined by user defined criteria."
    collapse_duplicate: "raw reads which are duplicates of the sequences retained in the collapse-unique file."
    collapse_undetermined: "raw reads which were excluded from consideration due to having too many N characters in the sequence."
  }
}