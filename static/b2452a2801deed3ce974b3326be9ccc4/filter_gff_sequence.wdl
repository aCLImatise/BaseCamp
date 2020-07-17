version 1.0

task FilterGffSequence {
  input {
    Boolean? sorted
    Boolean? attribute
    Boolean? function
    Float? value
    Boolean? comparison
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    filter-gff sequence \
      ~{input_file} \
      ~{output_file} \
      ~{true="--sorted" false="" sorted} \
      ~{true="--attribute" false="" attribute} \
      ~{true="--function" false="" function} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{true="--comparison" false="" comparison} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    sorted: "If the GFF file is sorted (all of a sequence annotations are contiguos) can use less memory, `sort -s -k 1,1` can be used"
    attribute: "[evalue|bitscore|identity|length] Attribute on which to apply the filter [default: bitscore]"
    function: "[mean|median|quantile|std|max|min] Function for filtering  [default: mean]"
    value: "Value for the function (used for *std* and *quantile*)"
    comparison: "[gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than or equal to)  [default: ge]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}