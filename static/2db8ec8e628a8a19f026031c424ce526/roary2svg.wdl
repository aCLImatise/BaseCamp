version 1.0

task Roary2svg.pl {
  input {
    Boolean verboseVerbose
    String widthWidth
    String heightHeight
    String taxTaxAColumn
    String colourColour
    String sepSepColour
    Boolean accAccOnly
    Boolean borderBorder
  }
  command <<<
    roary2svg.pl \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(heightHeight) then ("--height " +  '"' + heightHeight + '"') else ""} \
      ~{if defined(taxTaxAColumn) then ("--taxacolumn " +  '"' + taxTaxAColumn + '"') else ""} \
      ~{if defined(colourColour) then ("--colour " +  '"' + colourColour + '"') else ""} \
      ~{if defined(sepSepColour) then ("--sepcolour " +  '"' + sepSepColour + '"') else ""} \
      ~{true="--acconly" false="" accAccOnly} \
      ~{true="--border" false="" borderBorder}
  >>>
}