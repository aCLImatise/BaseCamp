version 1.0

task DemuxByBarcodeGroups.py {
  input {
    String? pooled_fast_x
    String pooled_gff
    String demux_count_file
    String output_prefix
    String out_group_dict
  }
  command <<<
    demux_by_barcode_groups.py \
      ~{pooled_gff} \
      ~{demux_count_file} \
      ~{output_prefix} \
      ~{out_group_dict} \
      ~{if defined(pooled_fast_x) then ("--pooled_fastx " +  '"' + pooled_fast_x + '"') else ""}
  >>>
  parameter_meta {
    pooled_fast_x: "Pooled FASTA/FASTQ (optional, if given, will also output demux fa/fq)"
    pooled_gff: "Pooled GFF file"
    demux_count_file: "Demux count file"
    output_prefix: "Output prefix for GFF outputs"
    out_group_dict: "Tuples indicating barcode grouping"
  }
}