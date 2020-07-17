version 1.0

task Pp2dot {
  input {
    String? colors
    String? colors_two
    Boolean? man
  }
  command <<<
    pp2dot \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(colors_two) then ("--colors2 " +  '"' + colors_two + '"') else ""} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    colors: "Color palette. Use --colors2 to define a second palette for the lower-left triangle. Default: \"black\",\"cyan\",\"green\",\"yellow\",\"red\""
    colors_two: "Color palette for lower left triangle."
    man: "Full documentation"
  }
}