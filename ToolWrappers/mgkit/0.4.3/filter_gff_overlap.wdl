version 1.0

task FiltergffOverlap {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff overlap \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-s, --size INTEGER              Size of the overlap that triggers the filter\\n[default: 100]\\n-t, --sorted                    If the GFF file is sorted (all of a sequence\\nannotations are contiguos and sorted by\\nstrand) can use less memory, `sort -s -k 1,1\\n-k 7,7` can be used\\n-c, --choose-func TEXT          Function to choose between two overlapping\\nannotations\\n-a, --sort-attr [bitscore|identity|length]\\nAttribute to sort annotations before\\nfiltering (default bitscore)  [default:\\nbitscore]\\n--progress                      Shows Progress Bar\\n--help                          Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}