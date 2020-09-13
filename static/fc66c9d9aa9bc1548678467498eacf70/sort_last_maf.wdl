version 1.0

task Sortlastmaf {
  input {
    Boolean? input_file_produced
    File? reads_file
    File? output_file_use
    Boolean? verbose
  }
  command <<<
    sort_last_maf \
      ~{if (input_file_produced) then "--input" else ""} \
      ~{if (reads_file) then "--readsFile" else ""} \
      ~{if (output_file_use) then "--output" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_file_produced: "[string]                 Input file in MAF format as produced by Last (.gz ok). Mandatory option."
    reads_file: "[string]             File containing all reads, if given, determines output order (.gz ok)."
    output_file_use: "[string]                Output file (.gz ok, use 'stdout' for standard out). Default value: stdout."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_reads_file = "${in_reads_file}"
    File out_output_file_use = "${in_output_file_use}"
  }
}