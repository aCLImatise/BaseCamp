version 1.0

task Safetynotguaranteedpy {
  input {
    File? write_fastq_reads
    Int? phred_score
    String? qual_format
    File? log
    Boolean? quiet
    Boolean? verbose
    Boolean? debug
    String reads_dot_fa
  }
  command <<<
    safety_not_guaranteed_py \
      ~{reads_dot_fa} \
      ~{if defined(write_fastq_reads) then ("--output " +  '"' + write_fastq_reads + '"') else ""} \
      ~{if defined(phred_score) then ("--phred-score " +  '"' + phred_score + '"') else ""} \
      ~{if defined(qual_format) then ("--qual-format " +  '"' + qual_format + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    write_fastq_reads: "Write output FASTQ reads to this file. If not given,\\nwill print to stdout."
    phred_score: "The quality score to give to all bases. There is no\\nmeaningful quality score we can automatically give, so\\nyou will have to specify an artificial one. A good\\nchoice is 40, the maximum score normally output by\\nsequencers."
    qual_format: "FASTQ quality score format. Sanger scores are assumed\\nto begin at '33' (!). Default: sanger."
    log: "Print log messages to this file instead of to stderr.\\nWarning: Will overwrite the file."
    quiet: ""
    verbose: ""
    debug: ""
    reads_dot_fa: "Input FASTA reads. Omit to read from stdin."
  }
  output {
    File out_stdout = stdout()
    File out_write_fastq_reads = "${in_write_fastq_reads}"
  }
}