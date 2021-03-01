version 1.0

task AlignSetspyOffset {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Int? nproc
    File? tab_delimited_file
    String? bf
    String? pf
    String? mode
    Boolean? div
  }
  command <<<
    AlignSets_py offset \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(tab_delimited_file) then ("-d " +  '"' + tab_delimited_file + '"') else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pf) then ("--pf " +  '"' + pf + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (div) then "--div" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    tab_delimited_file: "The tab delimited file of offset tags and values.\\n(default: None)"
    bf: "The annotation field containing barcode labels for\\nsequence grouping. (default: BARCODE)"
    pf: "The primer field to use for offset assignment.\\n(default: PRIMER)"
    mode: "Specifies whether or align sequence by padding with\\ngaps or by cutting the 5' sequence to a common start\\nposition. (default: pad)"
    div: "Specify to calculate nucleotide diversity of each set\\n(average pairwise error rate). (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}