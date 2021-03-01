version 1.0

task HicPlotAverageRegions {
  input {
    File? matrix
    File? output_file
    Boolean? logo_nep
    Boolean? log
    String? colormap
    String? vmin
    String? vmax
    Int? dpi
  }
  command <<<
    hicPlotAverageRegions \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if (logo_nep) then "--log1p" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrix: "The averaged regions file computed by\\nhicAverageRegions (npz file)."
    output_file: "The averaged regions plot."
    logo_nep: "Plot log1p of the matrix values."
    log: "Plot log of the matrix values."
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html (Default: hot_r)."
    vmin: "Minimum score value."
    vmax: "Maximum score value."
    dpi: "Resolution of image ifouput is a raster graphics image\\n(e.g png, jpg) (Default: 300)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}