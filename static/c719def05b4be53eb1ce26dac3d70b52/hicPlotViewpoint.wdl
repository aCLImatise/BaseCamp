version 1.0

task HicPlotViewpoint {
  input {
    Array[String] matrix
    String? region
    File? out_filename
    Int? reference_point
    String? chromosome
    File? interaction_out_filename
    Int? dpi
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
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrix: "Hi-C matrix to plot."
    region: "The format is chr:start-end."
    out_filename: "File name of the image to save."
    reference_point: "Reference point. Needs to be in the format: 'chr:100'\\nfor a single reference point or 'chr:100-200' for a\\nreference region."
    chromosome: "Optional parameter: Only show results for this\\nchromosome."
    interaction_out_filename: "Optional parameter: If set, a bedgraph file with all\\ninteraction will be created."
    dpi: "Optional parameter: Resolution for the image in case\\ntheouput is a raster graphics image (e.g png, jpg)\\n(Default: 300)."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_interaction_out_filename = "${in_interaction_out_filename}"
  }
}