version 1.0

task Safetynotguaranteedpy {
  input {
    File? write_output_fastq
    Int? phred_score
    String? qual_format
    File? log
    String reads_dot_fa
  }
  command <<<
    safety_not_guaranteed_py \
      ~{reads_dot_fa} \
      ~{if defined(write_output_fastq) then ("--output " +  '"' + write_output_fastq + '"') else ""} \
      ~{if defined(phred_score) then ("--phred-score " +  '"' + phred_score + '"') else ""} \
      ~{if defined(qual_format) then ("--qual-format " +  '"' + qual_format + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_fastq: "Write output FASTQ reads to this file. If not given,\\nwill print to stdout."
    phred_score: "The quality score to give to all bases. There is no\\nmeaningful quality score we can automatically give, so\\nyou will have to specify an artificial one. A good\\nchoice is 40, the maximum score normally output by\\nsequencers."
    qual_format: "FASTQ quality score format. Sanger scores are assumed\\nto begin at '33' (!). Default: sanger."
    log: "Print log messages to this file instead of to stderr.\\nWarning: Will overwrite the file."
    reads_dot_fa: "Input FASTA reads. Omit to read from stdin."
  }
  output {
    File out_stdout = stdout()
    File out_write_output_fastq = "${in_write_output_fastq}"
  }
}