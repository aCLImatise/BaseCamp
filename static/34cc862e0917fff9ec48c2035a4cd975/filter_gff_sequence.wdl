version 1.0

task FiltergffSequence {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff sequence \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-t, --sorted                    If the GFF file is sorted (all of a sequence\\nannotations are contiguos) can use less\\nmemory, `sort -s -k 1,1` can be used\\n-a, --attribute [evalue|bitscore|identity|length]\\nAttribute on which to apply the filter\\n[default: bitscore]\\n-f, --function [mean|median|quantile|std|max|min]\\nFunction for filtering  [default: mean]\\n-l, --value FLOAT               Value for the function (used for *std* and\\n*quantile*)\\n-c, --comparison [gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than\\nor equal to)  [default: ge]\\n--progress                      Shows Progress Bar\\n--help                          Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}