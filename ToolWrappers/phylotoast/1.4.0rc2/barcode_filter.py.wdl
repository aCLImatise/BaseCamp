version 1.0

task BarcodeFilterpy {
  input {
    File? input_fast_a_fn
    File? mapping_fn
    File? quality_fn
    String? output_prefix
  }
  command <<<
    barcode_filter_py \
      ~{if defined(input_fast_a_fn) then ("--input_fasta_fn " +  '"' + input_fast_a_fn + '"') else ""} \
      ~{if defined(mapping_fn) then ("--mapping_fn " +  '"' + mapping_fn + '"') else ""} \
      ~{if defined(quality_fn) then ("--quality_fn " +  '"' + quality_fn + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fast_a_fn: "The sequence data file to be filtered."
    mapping_fn: "The mapping file containing the barcodes you want\\nfiltered sequenced to contain."
    quality_fn: "The quality data file. If you plan to use quality data\\nwith split_libraries.py, you have to filter the\\nquality data as well."
    output_prefix: "The prefix for the output filtered data"
  }
  output {
    File out_stdout = stdout()
  }
}