version 1.0

task DemuxByBarcodeGroupspy {
  input {
    String? pooled_fast_x
    String positional_arguments
    String pooled_gff
    String demux_count_file
    String output_prefix
    String tuples_indicating_barcode
  }
  command <<<
    demux_by_barcode_groups_py \
      ~{positional_arguments} \
      ~{pooled_gff} \
      ~{demux_count_file} \
      ~{output_prefix} \
      ~{tuples_indicating_barcode} \
      ~{if defined(pooled_fast_x) then ("--pooled_fastx " +  '"' + pooled_fast_x + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    pooled_fast_x: "Pooled FASTA/FASTQ (optional, if given, will also\\noutput demux fa/fq)\\n"
    positional_arguments: "positional arguments:"
    pooled_gff: "Pooled GFF file"
    demux_count_file: "Demux count file"
    output_prefix: "Output prefix for GFF outputs"
    tuples_indicating_barcode: "Tuples indicating barcode grouping"
  }
  output {
    File out_stdout = stdout()
  }
}