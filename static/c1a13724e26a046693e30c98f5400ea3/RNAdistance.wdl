version 1.0

task RNAdistance {
  input {
    Boolean? detailed_help
    String? distance
    String? compare
    Boolean? shapiro
    Boolean? backtrack
  }
  command <<<
    RNAdistance \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{if (shapiro) then "--shapiro" else ""} \
      ~{if (backtrack) then "--backtrack" else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    distance: "Specify the distance representation to be used\\nin calculations.\\n(default=`f')"
    compare: "|m|f|c         Specify the comparison directive.\\n(default=`p')"
    shapiro: "Use the Bruce Shapiro's cost matrix for\\ncomparing coarse structures.\\n(default=off)"
    backtrack: "[=<filename>]  Print an \\\"alignment\\\" with gaps of the\\nstructures, to show matching substructures.\\nThe aligned structures are written to\\n<filename>, if specified.\\n(default=`none')"
  }
  output {
    File out_stdout = stdout()
  }
}