version 1.0

task Bam2fasta {
  input {
    Boolean? str_prefix_output
    Boolean? int_gzip_compression
    Boolean? compress_we_add
    Boolean? split_barcodes
    Boolean? seq_id_prefix
    String str_input_files
  }
  command <<<
    bam2fasta \
      ~{str_input_files} \
      ~{if (str_prefix_output) then "--output" else ""} \
      ~{if (int_gzip_compression) then "-c" else ""} \
      ~{if (compress_we_add) then "-u" else ""} \
      ~{if (split_barcodes) then "--split-barcodes" else ""} \
      ~{if (seq_id_prefix) then "--seqid-prefix" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0"
  }
  parameter_meta {
    str_prefix_output: "STR  Prefix of output filenames, '-' implies streaming. Streaming not supported with compression\\nnor with split_barcodes"
    int_gzip_compression: "INT  Gzip compression level [1-9] [1]"
    compress_we_add: "Do not compress. In this case, we will not add .gz, and we ignore any -c setting."
    split_barcodes: "Split output into multiple FASTA files, by barcode pairs."
    seq_id_prefix: "STR  Prefix for sequence IDs in headers"
    str_input_files: "STR  Input file(s)."
  }
  output {
    File out_stdout = stdout()
  }
}