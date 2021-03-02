version 1.0

task Bam2fasta {
  input {
    Boolean? prefix_output_filenames
    Boolean? gzip_compression_level
    Boolean? compress_we_add
    Boolean? split_barcodes
    Boolean? seq_id_prefix
    String input_file
  }
  command <<<
    bam2fasta \
      ~{input_file} \
      ~{if (prefix_output_filenames) then "--output" else ""} \
      ~{if (gzip_compression_level) then "-c" else ""} \
      ~{if (compress_we_add) then "-u" else ""} \
      ~{if (split_barcodes) then "--split-barcodes" else ""} \
      ~{if (seq_id_prefix) then "--seqid-prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix_output_filenames: "Prefix of output filenames"
    gzip_compression_level: "Gzip compression level [1-9] [1]"
    compress_we_add: "Do not compress. In this case, we will not add .gz, and we ignore any -c setting."
    split_barcodes: "Split output into multiple FASTA files, by barcode pairs."
    seq_id_prefix: "Prefix for sequence IDs in headers"
    input_file: "Input file."
  }
  output {
    File out_stdout = stdout()
  }
}