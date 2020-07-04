version 1.0

task Roary2svg.pl {
  input {
    Boolean? verbose
    String? width
    String? height
    String? tax_a_column
    String? colour
    String? sep_colour
    Boolean? acc_only
    Boolean? border
  }
  command <<<
    roary2svg.pl \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(tax_a_column) then ("--taxacolumn " +  '"' + tax_a_column + '"') else ""} \
      ~{if defined(colour) then ("--colour " +  '"' + colour + '"') else ""} \
      ~{if defined(sep_colour) then ("--sepcolour " +  '"' + sep_colour + '"') else ""} \
      ~{true="--acconly" false="" acc_only} \
      ~{true="--border" false="" border}
  >>>
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
}