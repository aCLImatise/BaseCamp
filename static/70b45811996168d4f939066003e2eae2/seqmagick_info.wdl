version 1.0

task SeqmagickInfo {
  input {
    String? input_format
    File? out_file
    File? format
    Int? threads
    String sequence_files
  }
  command <<<
    seqmagick info \
      ~{sequence_files} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqmagick:0.8.4--py_1"
  }
  parameter_meta {
    input_format: "Input format. Overrides extension for all input files"
    out_file: "Output destination. Default: STDOUT"
    format: "Specify output format as tab-delimited, CSV or aligned\\nin a borderless table. Default is tab-delimited if the\\noutput is directed to a file, aligned if output to the\\nconsole."
    threads: "Number of threads (CPUs). [1]"
    sequence_files: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
    File out_format = "${in_format}"
  }
}