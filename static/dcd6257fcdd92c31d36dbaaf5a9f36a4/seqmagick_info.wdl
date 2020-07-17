version 1.0

task SeqmagickInfo {
  input {
    String? input_format
    String? out_file
    String? format
    String? threads
  }
  command <<<
    seqmagick info \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_format: "Input format. Overrides extension for all input files"
    out_file: "Output destination. Default: STDOUT"
    format: "Specify output format as tab-delimited, CSV or aligned in a borderless table. Default is tab-delimited if the output is directed to a file, aligned if output to the console."
    threads: "Number of threads (CPUs). [1]"
  }
}