version 1.0

task BuildConsensus.py {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    String? outdir
    String? out_name
    String? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    String? nproc
    Boolean? dep
    Int? max_div
    Int? max_error
    String consensus_pass
    String consensus_fail
    String primer
    String pr_count
    String pr_cons
    String pr_freq
    String cons_count
  }
  command <<<
    BuildConsensus.py \
      ~{consensus_pass} \
      ~{consensus_fail} \
      ~{primer} \
      ~{pr_count} \
      ~{pr_cons} \
      ~{pr_freq} \
      ~{cons_count} \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--failed" false="" failed} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{true="--dep" false="" dep} \
      ~{if defined(max_div) then ("--maxdiv " +  '"' + max_div + '"') else ""} \
      ~{if defined(max_error) then ("--maxerror " +  '"' + max_error + '"') else ""}
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
    nproc: "The number of simultaneous computational processes to execute (CPU cores to utilized). (default: 8)"
    dep: "Specify to calculate consensus quality with a non- independence assumption (default: False)"
    max_div: "Specify to calculate the nucleotide diversity of each read group (average pairwise error rate) and remove groups exceeding the given diversity threshold. Diversity is calculate for all positions within the read group, ignoring any character filtering imposed by the -q, --freq and --maxgap arguments. Mutually exclusive with --maxerror. (default: None)"
    max_error: "Specify to calculate the error rate of each read group (rate of mismatches from consensus) and remove groups exceeding the given error threshold. The error rate is calculated against the final consensus sequence, which may include masked positions due to the -q and --freq arguments and may have deleted positions due to the --maxgap argument. Mutually exclusive with --maxdiv. (default: None)"
    consensus_pass: "consensus reads."
    consensus_fail: "raw reads failing consensus filtering criteria."
    primer: "a comma delimited list of unique primer annotations found within the barcode read group."
    pr_count: "a comma delimited list of the corresponding counts of unique primer annotations."
    pr_cons: "the majority primer within the barcode read group."
    pr_freq: "the frequency of the majority primer."
    cons_count: "the count of reads within the barcode read group which contributed to the consensus sequence. This is the total size of the read group, minus sequence excluded due to user defined filtering criteria."
  }
}