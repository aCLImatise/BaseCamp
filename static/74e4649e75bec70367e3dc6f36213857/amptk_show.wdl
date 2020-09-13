version 1.0

task AmptkShow {
  input {
    Boolean? input_fastq_file
    Boolean? quality_trim
    Boolean? max_ee
    Boolean? length
    File? out
    String arguments
  }
  command <<<
    amptk show \
      ~{arguments} \
      ~{if (input_fastq_file) then "--input" else ""} \
      ~{if (quality_trim) then "--quality_trim" else ""} \
      ~{if (max_ee) then "--maxee" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  parameter_meta {
    input_fastq_file: "Input FASTQ file (.demux.fq)"
    quality_trim: "Quality trim reads"
    max_ee: "maxEE threshold for quality. Default: 1.0"
    length: "truncation length for trimming: Default: 250"
    out: "Output FASTQ file name (--quality_trim only)"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}