version 1.0

task HicPlotViewpoint {
  input {
    Array[String] matrix
    String? region
    String? out_filename
    String? reference_point
    String? chromosome
    Int? interaction_out_filename
    String? dpi
  }
  command <<<
    hicPlotViewpoint \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(reference_point) then ("--referencePoint " +  '"' + reference_point + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(interaction_out_filename) then ("--interactionOutFileName " +  '"' + interaction_out_filename + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Hi-C matrix to plot."
    region: "The format is chr:start-end."
    out_filename: "File name of the image to save."
    reference_point: "Reference point. Needs to be in the format: 'chr:100' for a single reference point or 'chr:100-200' for a reference region."
    chromosome: "Optional parameter: Only show results for this chromosome."
    interaction_out_filename: "Optional parameter: If set, a bedgraph file with all interaction will be created."
    dpi: "Optional parameter: Resolution for the image in case theouput is a raster graphics image (e.g png, jpg)."
  }
}