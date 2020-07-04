version 1.0

task AssignLineage.py {
  input {
    String? format
    String? collapse_to_poly_to_mies
    String? input_tree_file
    String? _output_output
    String? index
    String? separator
    String? tax_on
  }
  command <<<
    assign_lineage.py \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(collapse_to_poly_to_mies) then ("--collapse_to_polytomies " +  '"' + collapse_to_poly_to_mies + '"') else ""} \
      ~{if defined(input_tree_file) then ("--input " +  '"' + input_tree_file + '"') else ""} \
      ~{if defined(_output_output) then ("-o " +  '"' + _output_output + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""}
  >>>
  parameter_meta {
    format: "what format is the tree file. This is passed to dendropy. default is 'nexus'"
    collapse_to_poly_to_mies: "A optional flag to collapse branches with length <= the input before running the rule."
    input_tree_file: "The input tree file. Format can be specified with the format flag."
    _output_output: "*, --output output.* The output file"
    index: "The index of the trait to reconstruct when the tip label is split by the separator"
    separator: "optional separator used to get trait"
    tax_on: "The tip label to get"
  }
}