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
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{true="--shapiro" false="" shapiro} \
      ~{true="--backtrack" false="" backtrack}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden options, and exit"
    distance: "Specify the distance representation to be used in calculations. (default=`f')"
    compare: "|m|f|c         Specify the comparison directive. (default=`p')"
    shapiro: "Use the Bruce Shapiro's cost matrix for comparing coarse structures. (default=off)"
    backtrack: "[=<filename>]  Print an \"alignment\" with gaps of the structures, to show matching substructures. The aligned structures are written to <filename>, if specified. (default=`none')"
  }
}