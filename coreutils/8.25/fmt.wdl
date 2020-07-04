version 1.0

task Fmt {
  input {
    String? crown_margin
    String? prefix
    String? split_only
    Boolean? tagged_paragraph
    Boolean? uniform_spacing
    String? maximum_line_width
    String? goal
    Boolean? var_7
    String? option
  }
  command <<<
    fmt \
      ~{option} \
      ~{if defined(crown_margin) then ("--crown-margin " +  '"' + crown_margin + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(split_only) then ("--split-only " +  '"' + split_only + '"') else ""} \
      ~{true="--tagged-paragraph" false="" tagged_paragraph} \
      ~{true="--uniform-spacing" false="" uniform_spacing} \
      ~{if defined(maximum_line_width) then ("--width " +  '"' + maximum_line_width + '"') else ""} \
      ~{if defined(goal) then ("--goal " +  '"' + goal + '"') else ""} \
      ~{true="-WIDTH" false="" var_7}
  >>>
  parameter_meta {
    crown_margin: "indentation of first two lines"
    prefix: "reformat only lines beginning with STRING, reattaching the prefix to reformatted lines"
    split_only: "long lines, but do not refill"
    tagged_paragraph: "indentation of first line different from second"
    uniform_spacing: "one space between words, two after sentences"
    maximum_line_width: "maximum line width (default of 75 columns)"
    goal: "goal width (default of 93% of width)"
    var_7: ""
    option: ""
  }
}