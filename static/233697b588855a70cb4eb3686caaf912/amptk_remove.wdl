version 1.0

task AmptkRemove {
  input {
    Boolean? input_fastq_file
    Boolean? threshold
    Boolean? list
    Boolean? in_file_one
    File? out
    File? format
    String arguments
  }
  command <<<
    amptk remove \
      ~{arguments} \
      ~{if (input_fastq_file) then "--input" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (in_file_one) then "--file" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (format) then "--format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_file: "Input FASTQ file (.demux.fq)"
    threshold: "Keep samples with read count greater than -t"
    list: "List of sample (barcode) names to remove, separate by space"
    in_file_one: "List of sample (barcode) names to remove in a file, one per line"
    out: "Output file name"
    format: "File format for output file. Default: fastq [fastq, fasta]"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_format = "${in_format}"
  }
}