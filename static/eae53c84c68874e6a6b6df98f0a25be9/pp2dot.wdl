version 1.0

task Pp2dot {
  input {
    Int? colors
    Int? colors_two
    Boolean? man
  }
  command <<<
    pp2dot \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(colors_two) then ("--colors2 " +  '"' + colors_two + '"') else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    colors: "Color palette. Use --colors2 to define a second palette for the\\nlower-left triangle. Default: \\\"black\\\",\\\"cyan\\\",\\\"green\\\",\\\"yellow\\\",\\\"red\\\""
    colors_two: "Color palette for lower left triangle."
    man: "Full documentation\\n"
  }
  output {
    File out_stdout = stdout()
  }
}