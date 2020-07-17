version 1.0

task HicPlotAverageRegions {
  input {
    String? matrix
    String? output_file
    Boolean? logo_nep
    Boolean? log
    String? colormap
    String? vmin
    String? vmax
    String? dpi
  }
  command <<<
    hicPlotAverageRegions \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{true="--log1p" false="" logo_nep} \
      ~{true="--log" false="" log} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    matrix: "The averaged regions file computed by hicAverageRegions (npz file)."
    output_file: "The averaged regions plot."
    logo_nep: "Plot log1p of the matrix values."
    log: "Plot log of the matrix values."
    colormap: "Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col ormaps_reference.html"
    vmin: "Minimum score value."
    vmax: "Maximum score value."
    dpi: "Resolution of image ifouput is a raster graphics image (e.g png, jpg)."
  }
}