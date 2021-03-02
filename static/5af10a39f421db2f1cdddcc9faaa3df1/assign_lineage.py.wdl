version 1.0

task AssignLineagepy {
  input {
    String? format
    Int? collapse_to_poly_to_mies
    File? input_tree_file
    File? _output_file
    String? index
    String? separator
    String? tax_on
  }
  command <<<
    assign_lineage_py \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(collapse_to_poly_to_mies) then ("--collapse_to_polytomies " +  '"' + collapse_to_poly_to_mies + '"') else ""} \
      ~{if defined(input_tree_file) then ("--input " +  '"' + input_tree_file + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "what format is the tree file. This is passed to\\ndendropy. default is 'nexus'"
    collapse_to_poly_to_mies: "A optional flag to collapse branches with length <=\\nthe input before running the rule."
    input_tree_file: "The input tree file. Format can be specified with the\\nformat flag."
    _output_file: "*, --output output.*\\nThe output file"
    index: "The index of the trait to reconstruct when the tip\\nlabel is split by the separator"
    separator: "optional separator used to get trait"
    tax_on: "The tip label to get\\n"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}