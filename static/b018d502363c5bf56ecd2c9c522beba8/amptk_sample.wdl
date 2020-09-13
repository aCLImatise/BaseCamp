version 1.0

task AmptkSample {
  input {
    Boolean? input_fastq_file
    Boolean? num_reads
    File? out
  }
  command <<<
    amptk sample \
      ~{if (input_fastq_file) then "--input" else ""} \
      ~{if (num_reads) then "--num_reads" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  parameter_meta {
    input_fastq_file: "Input FASTQ file"
    num_reads: "Number of reads to sub-sample to"
    out: "Output FASTQ file name"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}