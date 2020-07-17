version 1.0

task Bam2fastq {
  input {
    Boolean? prefix_output_filenames
    Boolean? gzip_compression_level
    Boolean? compress_case_we
    Boolean? split_barcodes
    Boolean? seq_id_prefix
    String input_file
  }
  command <<<
    bam2fastq \
      ~{input_file} \
      ~{true="--output" false="" prefix_output_filenames} \
      ~{true="-c" false="" gzip_compression_level} \
      ~{true="-u" false="" compress_case_we} \
      ~{true="--split-barcodes" false="" split_barcodes} \
      ~{true="--seqid-prefix" false="" seq_id_prefix}
  >>>
  parameter_meta {
    prefix_output_filenames: "Prefix of output filenames"
    gzip_compression_level: "Gzip compression level [1-9] [1]"
    compress_case_we: "Do not compress. In this case, we will not add .gz, and we ignore any -c setting."
    split_barcodes: "Split output into multiple FASTQ files, by barcode pairs."
    seq_id_prefix: "Prefix for sequence IDs in headers"
    input_file: "Input file."
  }
}