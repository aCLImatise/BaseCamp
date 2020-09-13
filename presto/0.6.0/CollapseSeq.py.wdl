version 1.0

task CollapseSeqpy {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Int? maximum_number_consider
    Array[String] uf
    Array[String] cf
    String? act
    Boolean? inner
    File? keep_miss
    String? max_f
    Int? minf
    String collapse_unique
    String collapse_duplicate
    String collapse_undetermined
    String dup_count
  }
  command <<<
    CollapseSeq_py \
      ~{collapse_unique} \
      ~{collapse_duplicate} \
      ~{collapse_undetermined} \
      ~{dup_count} \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(maximum_number_consider) then ("-n " +  '"' + maximum_number_consider + '"') else ""} \
      ~{if defined(uf) then ("--uf " +  '"' + uf + '"') else ""} \
      ~{if defined(cf) then ("--cf " +  '"' + cf + '"') else ""} \
      ~{if defined(act) then ("--act " +  '"' + act + '"') else ""} \
      ~{if (inner) then "--inner" else ""} \
      ~{if (keep_miss) then "--keepmiss" else ""} \
      ~{if defined(max_f) then ("--maxf " +  '"' + max_f + '"') else ""} \
      ~{if defined(minf) then ("--minf " +  '"' + minf + '"') else ""}
  >>>
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    maximum_number_consider: "Maximum number of missing nucleotides to consider for\\ncollapsing sequences. A sequence will be considered\\nundetermined if it contains too many missing\\nnucleotides. (default: 0)"
    uf: "Specifies a set of annotation fields that must match\\nfor sequences to be considered duplicates. (default:\\nNone)"
    cf: "Specifies a set of annotation fields to copy into the\\nunique sequence output. (default: None)"
    act: "[{min,max,sum,set} ...]\\nList of actions to take for each copy field which\\ndefines how each annotation will be combined into a\\nsingle value. The actions \\\"min\\\", \\\"max\\\", \\\"sum\\\" perform\\nthe corresponding mathematical operation on numeric\\nannotations. The action \\\"set\\\" collapses annotations\\ninto a comma delimited list of unique values.\\n(default: None)"
    inner: "If specified, exclude consecutive missing characters\\nat either end of the sequence. (default: False)"
    keep_miss: "If specified, sequences with more missing characters\\nthan the threshold set by the -n parameter will be\\nwritten to the unique sequence output file with a\\nDUPCOUNT=1 annotation. If not specified, such\\nsequences will be written to a separate file.\\n(default: False)"
    max_f: "Specify the field whose maximum value determines the\\nretained sequence; mutually exclusive with --minf.\\n(default: None)"
    minf: "Specify the field whose minimum value determines the\\nretained sequence; mutually exclusive with --minf.\\n(default: None)"
    collapse_unique: "unique sequences. Contains one representative from each set of\\nduplicate sequences. The retained representative is determined by\\nuser defined criteria."
    collapse_duplicate: "raw reads which are duplicates of the sequences retained in the\\ncollapse-unique file."
    collapse_undetermined: "raw reads which were excluded from consideration due to having too\\nmany N characters in the sequence."
    dup_count: "total number of sequences within the set of duplicates for each\\nretained unique sequence. Meaning, the copy number of each unique\\nsequence within the data file."
  }
  output {
    File out_stdout = stdout()
    File out_keep_miss = "${in_keep_miss}"
  }
}