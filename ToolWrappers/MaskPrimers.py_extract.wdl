version 1.0

task MaskPrimerspyExtract {
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
    Int? start
    Int? len
    Boolean? rev_pr
    String? mode
    Boolean? barcode
    String? bf
    String? pf
  }
  command <<<
    MaskPrimers_py extract \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(len) then ("--len " +  '"' + len + '"') else ""} \
      ~{if (rev_pr) then "--revpr" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (barcode) then "--barcode" else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pf) then ("--pf " +  '"' + pf + '"') else ""}
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
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    start: "The starting position of the sequence region to\\nextract. (default: 0)"
    len: "The length of the sequence to extract. (default: None)"
    rev_pr: "Specify to extract from the tail end of the sequence\\nwith the start position relative to the end of the\\nsequence. (default: False)"
    mode: "Specifies the action to take with the sequence region.\\nThe \\\"cut\\\" mode will remove the region. The \\\"mask\\\" mode\\nwill replace the specified region with Ns. The \\\"trim\\\"\\nmode will remove the sequence preceding the specified\\nregion, but leave the region intact. The \\\"tag\\\" mode\\nwill leave the input sequence unmodified. (default:\\nmask)"
    barcode: "Specify to remove the sequence preceding the extracted\\nregion and annotate the read with that sequence.\\n(default: False)"
    bf: "Name of the barcode annotation field. (default:\\nBARCODE)"
    pf: "Name of the annotation field containing the extracted\\nsequence region. (default: PRIMER)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}