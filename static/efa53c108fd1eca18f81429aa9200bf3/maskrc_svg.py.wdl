version 1.0

task Maskrcsvgpy {
  input {
    Boolean? gubbins
    String? aln
    File? out
    String? symbol
    File? regions
    File? svg
    Int? svg_size
    File? svg_order
    String? svg_colour
    Boolean? consensus
    String prefix
  }
  command <<<
    maskrc_svg_py \
      ~{prefix} \
      ~{if (gubbins) then "--gubbins" else ""} \
      ~{if defined(aln) then ("--aln " +  '"' + aln + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(symbol) then ("--symbol " +  '"' + symbol + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(svg) then ("--svg " +  '"' + svg + '"') else ""} \
      ~{if defined(svg_size) then ("--svgsize " +  '"' + svg_size + '"') else ""} \
      ~{if defined(svg_order) then ("--svgorder " +  '"' + svg_order + '"') else ""} \
      ~{if defined(svg_colour) then ("--svgcolour " +  '"' + svg_colour + '"') else ""} \
      ~{if (consensus) then "--consensus" else ""}
  >>>
  parameter_meta {
    gubbins: "parse as Gubbins instead of ClonalFrameML"
    aln: "multiFASTA alignment used as input for CFML (required)"
    out: "output file for masked alignment (default=\\\"maskrc.aln\\\")"
    symbol: "symbol to use for masking (default=\\\"?\\\")"
    regions: "output recombinant regions to file"
    svg: "draw SVG output of recombinant regions and save as specified file"
    svg_size: "specify width and height of SVG in pixels (default=\\\"800x600\\\")"
    svg_order: "specify file containing list of taxa (1 per line) in desired order"
    svg_colour: "specify colour of recombination regions in HEX format (default=black)"
    consensus: "add consensus row of recombination hotspots"
    prefix: "prefix used for CFML/Gubbins input files (required)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_regions = "${in_regions}"
    File out_svg = "${in_svg}"
  }
}