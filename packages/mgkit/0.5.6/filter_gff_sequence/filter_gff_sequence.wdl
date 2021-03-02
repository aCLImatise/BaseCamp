version 1.0

task FiltergffSequence {
  input {
    Boolean? verbose
    Boolean? attribute
    Boolean? function
    Float? value
    Boolean? comparison
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff sequence \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (attribute) then "--attribute" else ""} \
      ~{if (function) then "--function" else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if (comparison) then "--comparison" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "If the GFF file is sorted (all of a sequence\\nannotations are contiguos) can use less\\nmemory, `sort -s -k 1,1` can be used"
    attribute: "[evalue|bitscore|identity|length]\\nAttribute on which to apply the filter\\n[default: bitscore]"
    function: "[mean|median|quantile|std|max|min]\\nFunction for filtering  [default: mean]"
    value: "Value for the function (used for *std* and\\n*quantile*)"
    comparison: "[gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than\\nor equal to)  [default: ge]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}