version 1.0

task DemuxByBarcodeForSubsampling.py {
  input {
    Boolean? ignore_novel
    String class_filename
    String fast_a_filename
    String demux_count_file
    String output_prefix
    String out_group_dict
  }
  command <<<
    demux_by_barcode_for_subsampling.py \
      ~{class_filename} \
      ~{fast_a_filename} \
      ~{demux_count_file} \
      ~{output_prefix} \
      ~{out_group_dict} \
      ~{true="--ignore_novel" false="" ignore_novel}
  >>>
  parameter_meta {
    ignore_novel: "Ignore novel genes/transcripts (default: off)"
    class_filename: "SQANTI classification file"
    fast_a_filename: "FASTA filename"
    demux_count_file: "Demux count file"
    output_prefix: "Output prefix for GFF outputs"
    out_group_dict: "Tuples indicating barcode grouping"
  }
}