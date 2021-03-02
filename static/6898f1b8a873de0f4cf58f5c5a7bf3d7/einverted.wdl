version 1.0

task Einverted {
  input {
    Boolean? gap
    Boolean? threshold
    Boolean? match
    Boolean? mismatch
    Boolean? max_repeat
    String characters_dot
  }
  command <<<
    einverted \
      ~{characters_dot} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (match) then "-match" else ""} \
      ~{if (mismatch) then "-mismatch" else ""} \
      ~{if (max_repeat) then "-maxrepeat" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap: "integer    [12] Gap penalty (Integer 0 or more)"
    threshold: "integer    [50] Minimum score threshold (Integer 0 or\\nmore)"
    match: "integer    [3] Match score (Integer 0 or more)"
    mismatch: "integer    [-4] Mismatch score (Integer up to 0)"
    max_repeat: "integer    [2000] Maximum separation between the start\\nof repeat and the end of the inverted\\nrepeat. (Integer 0 or more)"
    characters_dot: "Additional (Optional) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}