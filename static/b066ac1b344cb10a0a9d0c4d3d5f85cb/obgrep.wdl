version 1.0

task Obgrep {
  input {
    Boolean? invert_matching_print
    Boolean? print_number_matched
    String? specify_input_format
    Boolean? full_match_print
    Boolean? only_print_name
    String? print_molecule_occurs
  }
  command <<<
    obgrep \
      ~{true="-v" false="" invert_matching_print} \
      ~{true="-c" false="" print_number_matched} \
      ~{if defined(specify_input_format) then ("-i " +  '"' + specify_input_format + '"') else ""} \
      ~{true="-f" false="" full_match_print} \
      ~{true="-n" false="" only_print_name} \
      ~{if defined(print_molecule_occurs) then ("-t " +  '"' + print_molecule_occurs + '"') else ""}
  >>>
  parameter_meta {
    invert_matching_print: "Invert the matching, print non-matching molecules"
    print_number_matched: "Print the number of matched molecules"
    specify_input_format: "Specify the input and output format"
    full_match_print: "Full match, print matching-molecules when the number of heavy atoms is equal to the number of PATTERN atoms"
    only_print_name: "Only print the name of the molecules"
    print_molecule_occurs: "Print a molecule only if the PATTERN occurs NUM times inside the molecule"
  }
}