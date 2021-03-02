version 1.0

task Roary2svgpl {
  input {
    Boolean? verbose
    Int? width
    Int? height
    Int? tax_a_column
    String? colour
    String? sep_colour
    Boolean? acc_only
    Boolean? border
  }
  command <<<
    roary2svg_pl \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(tax_a_column) then ("--taxacolumn " +  '"' + tax_a_column + '"') else ""} \
      ~{if defined(colour) then ("--colour " +  '"' + colour + '"') else ""} \
      ~{if defined(sep_colour) then ("--sepcolour " +  '"' + sep_colour + '"') else ""} \
      ~{if (acc_only) then "--acconly" else ""} \
      ~{if (border) then "--border" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "!      Verbose output (default '0')."
    width: "Canvas width (default '1024')."
    height: "Row height (default '20')."
    tax_a_column: "Column in gpa.csv where taxa begin (default '14')."
    colour: "Colour of core cells (default 'SteelBlue')."
    sep_colour: "Colour of horizontal separators/borders (default 'LightGray')."
    acc_only: "!      Only draw accessory (non-core) genes (default '0')."
    border: "!       Add outline border (default '0')."
  }
  output {
    File out_stdout = stdout()
  }
}