version 1.0

task TaxonutilsToHdf {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    taxon_utils to_hdf \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-n, --table-name TEXT     Name of the table/storage to use  [default: taxa]\\n-w, --overwrite           Overwrite the file, instead of appending to it\\n-s, --index-size INTEGER  Maximum number of characters for the gene_id\\n[default: 12]\\n-c, --chunk-size INTEGER  Chunk size to use when reading the input file\\n[default: 5000000]\\n--progress                Shows Progress Bar\\n--help                    Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}