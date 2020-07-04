version 1.0

task FilterGffOverlap {
  input {
    Int? size
    Boolean? sorted
    String? choose_func
    Boolean? sort_attr
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    filter-gff overlap \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="--sorted" false="" sorted} \
      ~{if defined(choose_func) then ("--choose-func " +  '"' + choose_func + '"') else ""} \
      ~{true="--sort-attr" false="" sort_attr} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    size: "Size of the overlap that triggers the filter [default: 100]"
    sorted: "If the GFF file is sorted (all of a sequence annotations are contiguos and sorted by strand) can use less memory, `sort -s -k 1,1 -k 7,7` can be used"
    choose_func: "Function to choose between two overlapping annotations"
    sort_attr: "[bitscore|identity|length] Attribute to sort annotations before filtering (default bitscore)  [default: bitscore]"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}