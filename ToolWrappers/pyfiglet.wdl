version 1.0

task Pyfiglet {
  input {
    String? font
    String? direction
    String? justify
    Int? width
    Boolean? reverse
    Boolean? flip
    Boolean? list_fonts
    Boolean? info_font
    String? text_dot_dot
  }
  command <<<
    pyfiglet \
      ~{text_dot_dot} \
      ~{if defined(font) then ("--font " +  '"' + font + '"') else ""} \
      ~{if defined(direction) then ("--direction " +  '"' + direction + '"') else ""} \
      ~{if defined(justify) then ("--justify " +  '"' + justify + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (flip) then "--flip" else ""} \
      ~{if (list_fonts) then "--list_fonts" else ""} \
      ~{if (info_font) then "--info_font" else ""}
  >>>
  parameter_meta {
    font: "font to render with (default: standard)"
    direction: "set direction text will be formatted in (default:\\nauto)"
    justify: "set justification, defaults to print direction"
    width: "set terminal width for wrapping/justification\\n(default: 80)"
    reverse: "shows mirror image of output text"
    flip: "flips rendered output text over"
    list_fonts: "show installed fonts list"
    info_font: "show font's information, use with -f FONT"
    text_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}