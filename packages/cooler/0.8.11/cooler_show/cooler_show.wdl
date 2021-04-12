version 1.0

task CoolerShow {
  input {
    Int? range_two
    Boolean? balanced
    File? out
    Int? dpi
    Boolean? scale
    Boolean? force
    Float? zmin
    Float? zmax
    String? cmap
    String? field
    String cool_path
    String range
  }
  command <<<
    cooler show \
      ~{cool_path} \
      ~{range} \
      ~{if defined(range_two) then ("--range2 " +  '"' + range_two + '"') else ""} \
      ~{if (balanced) then "--balanced" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(zmin) then ("--zmin " +  '"' + zmin + '"') else ""} \
      ~{if defined(zmax) then ("--zmax " +  '"' + zmax + '"') else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0"
  }
  parameter_meta {
    range_two: "The coordinates of a genomic region shown\\nalong the column dimension. If omitted, the\\ncolumn range is the same as the row range.\\nUse to display asymmetric matrices or trans\\ninteractions."
    balanced: "Show the balanced contact matrix. If not\\nprovided, display the unbalanced counts."
    out: "Save the image of the contact matrix to a\\nfile. If not specified, the matrix is\\ndisplayed in an interactive window. The\\nfigure format is deduced from the extension\\nof the file, the supported formats are png,\\njpg, svg, pdf, ps and eps."
    dpi: "The DPI of the figure, if saving to a file"
    scale: "[linear|log2|log10]\\nScale transformation of the colormap:\\nlinear, log2 or log10. Default is log10."
    force: "Force display very large matrices (>=10^8\\npixels). Use at your own risk as it may\\ncause performance issues."
    zmin: "The minimal value of the color scale. Units\\nmust match those of the colormap scale. To\\nprovide a negative value use a equal sign\\nand quotes, e.g. -zmin='-0.5'"
    zmax: "The maximal value of the color scale. Units\\nmust match those of the colormap scale. To\\nprovide a negative value use a equal sign\\nand quotes, e.g. -zmax='-0.5'"
    cmap: "The colormap used to display the contact\\nmatrix. See the full list at http://matplotl\\nib.org/examples/color/colormaps_reference.ht\\nml"
    field: "Pixel values to display.  [default: count]"
    cool_path: ""
    range: ""
  }
  output {
    File out_stdout = stdout()
  }
}