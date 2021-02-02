version 1.0

task DemuxByBarcodeForSubsamplingpy {
  input {
    Boolean? ignore_novel
    String positional_arguments
    String class_filename
    String fast_a_filename
    String demux_count_file
    String output_prefix
    String tuples_indicating_grouping
  }
  command <<<
    demux_by_barcode_for_subsampling_py \
      ~{positional_arguments} \
      ~{class_filename} \
      ~{fast_a_filename} \
      ~{demux_count_file} \
      ~{output_prefix} \
      ~{tuples_indicating_grouping} \
      ~{if (ignore_novel) then "--ignore_novel" else ""}
  >>>
  parameter_meta {
    ignore_novel: "Ignore novel genes/transcripts (default: off)"
    positional_arguments: "positional arguments:"
    class_filename: "SQANTI classification file"
    fast_a_filename: "FASTA filename"
    demux_count_file: "Demux count file"
    output_prefix: "Output prefix for GFF outputs"
    tuples_indicating_grouping: "Tuples indicating barcode grouping"
  }
  output {
    File out_stdout = stdout()
  }
}