version 1.0

task NetToBed {
  input {
    String? max_gap
    String? min_fill
    String in_dotnet
    String out_dot_bed
  }
  command <<<
    netToBed \
      ~{in_dotnet} \
      ~{out_dot_bed} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(min_fill) then ("-minFill " +  '"' + min_fill + '"') else ""}
  >>>
  parameter_meta {
    max_gap: "- break up at gaps of given size or more"
    min_fill: "- only include fill of given size of above."
    in_dotnet: ""
    out_dot_bed: ""
  }
}