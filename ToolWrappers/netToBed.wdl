version 1.0

task NetToBed {
  input {
    Int? max_gap
    Int? min_fill
    String in_dotnet
  }
  command <<<
    netToBed \
      ~{in_dotnet} \
      ~{if defined(max_gap) then ("-maxGap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(min_fill) then ("-minFill " +  '"' + min_fill + '"') else ""}
  >>>
  parameter_meta {
    max_gap: "- break up at gaps of given size or more"
    min_fill: "- only include fill of given size of above."
    in_dotnet: ""
  }
  output {
    File out_stdout = stdout()
  }
}