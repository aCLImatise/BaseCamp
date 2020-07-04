version 1.0

task FilterSeq.pyTrimqual {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    Boolean? fast_a
    String? nproc
    Int? quality_score_threshold
    String? win
    Boolean? reverse
  }
  command <<<
    FilterSeq.py trimqual \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(quality_score_threshold) then ("-q " +  '"' + quality_score_threshold + '"') else ""} \
      ~{if defined(win) then ("--win " +  '"' + win + '"') else ""} \
      ~{true="--reverse" false="" reverse}
  >>>
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to process. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument cannot be used with the --failed, --outdir, or --outname arguments. If unspecified, then the output filename will be based on the input filename(s). (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be specified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail processing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ. (default: None)"
    nproc: "The number of simultaneous computational processes to execute (CPU cores to utilized). (default: 8)"
    quality_score_threshold: "Quality score threshold. (default: 20)"
    win: "Nucleotide window size for moving average calculation. (default: 10)"
    reverse: "Specify to trim the head of the sequence rather than the tail. (default: False)"
  }
}