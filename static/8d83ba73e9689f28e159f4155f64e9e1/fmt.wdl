version 1.0

task Fmt {
  input {
    Boolean? crown_margin
    String? prefix
    Boolean? split_only
    Boolean? tagged_paragraph
    Boolean? uniform_spacing
    Int? maximum_line_width
    Int? goal
    Boolean? var_7
  }
  command <<<
    fmt \
      ~{if (crown_margin) then "--crown-margin" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (split_only) then "--split-only" else ""} \
      ~{if (tagged_paragraph) then "--tagged-paragraph" else ""} \
      ~{if (uniform_spacing) then "--uniform-spacing" else ""} \
      ~{if defined(maximum_line_width) then ("--width " +  '"' + maximum_line_width + '"') else ""} \
      ~{if defined(goal) then ("--goal " +  '"' + goal + '"') else ""} \
      ~{if (var_7) then "-WIDTH" else ""}
  >>>
  parameter_meta {
    crown_margin: "preserve indentation of first two lines"
    prefix: "reformat only lines beginning with STRING,\\nreattaching the prefix to reformatted lines"
    split_only: "split long lines, but do not refill"
    tagged_paragraph: "indentation of first line different from second"
    uniform_spacing: "one space between words, two after sentences"
    maximum_line_width: "maximum line width (default of 75 columns)"
    goal: "goal width (default of 93% of width)"
    var_7: ""
  }
  output {
    File out_stdout = stdout()
  }
}