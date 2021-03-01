version 1.0

task Calib {
  input {
    Boolean? input_forward
    Boolean? input_reverse
    Boolean? output_prefix
    Boolean? silent
    Boolean? no_sort
    Boolean? gzip_input
    Boolean? barcode_length
    Boolean? barcode_length_one
    Boolean? barcode_length_two
    Boolean? ignored_sequence_prefix_length
    Boolean? minimizer_count
    Boolean? km_er_size
    Boolean? error_tolerance
    Boolean? minimizer_threshold
    Boolean? threads
    String? parameter
  }
  command <<<
    calib \
      ~{if (input_forward) then "--input-forward" else ""} \
      ~{if (input_reverse) then "--input-reverse" else ""} \
      ~{if (output_prefix) then "--output-prefix" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if (gzip_input) then "--gzip-input" else ""} \
      ~{if (barcode_length) then "--barcode-length" else ""} \
      ~{if (barcode_length_one) then "--barcode-length-1" else ""} \
      ~{if (barcode_length_two) then "--barcode-length-2" else ""} \
      ~{if (ignored_sequence_prefix_length) then "--ignored-sequence-prefix-length" else ""} \
      ~{if (minimizer_count) then "--minimizer-count" else ""} \
      ~{if (km_er_size) then "--kmer-size" else ""} \
      ~{if (error_tolerance) then "--error-tolerance" else ""} \
      ~{if (minimizer_threshold) then "--minimizer-threshold" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(parameter) then ("--PARAMETER " +  '"' + parameter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_forward: "(type: string;   REQUIRED paramter)"
    input_reverse: "(type: string;   REQUIRED paramter)"
    output_prefix: "(type: string;   REQUIRED paramter)"
    silent: "(type: no value; default: unset)"
    no_sort: "(type: no value; default:  unset)"
    gzip_input: "(type: no value; default:  unset)"
    barcode_length: "(type: int;      REQUIRED paramter unless -l1 and -l2 are provided)"
    barcode_length_one: "(type: int;      REQUIRED paramter unless -l is provided)"
    barcode_length_two: "(type: int;      REQUIRED paramter unless -l is provided)"
    ignored_sequence_prefix_length: "(type: int;      default: 0)"
    minimizer_count: "(type: int;      default: Depends on observed read length;)"
    km_er_size: "(type: int;      default: Depends on observed read length;)"
    error_tolerance: "(type: int;      default: Depends on observed read length;)"
    minimizer_threshold: "(type: int;      default: Depends on observed read length;)"
    threads: "(type: int;      default: 1)"
    parameter: ""
  }
  output {
    File out_stdout = stdout()
  }
}