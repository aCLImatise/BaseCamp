version 1.0

task DropletBarcodePlotR {
  input {
    File? barcode_frequencies
    File? mtx_matrix
    Boolean? cells_by_row
    String? label
    Int? density_bins
    String? rory_k_multiplier
    File? output_plot
    File? output_thresholds
  }
  command <<<
    dropletBarcodePlot_R \
      ~{if defined(barcode_frequencies) then ("--barcode-frequencies " +  '"' + barcode_frequencies + '"') else ""} \
      ~{if defined(mtx_matrix) then ("--mtx-matrix " +  '"' + mtx_matrix + '"') else ""} \
      ~{if (cells_by_row) then "--cells-by-row" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(density_bins) then ("--density-bins " +  '"' + density_bins + '"') else ""} \
      ~{if defined(rory_k_multiplier) then ("--roryk-multiplier " +  '"' + rory_k_multiplier + '"') else ""} \
      ~{if defined(output_plot) then ("--output-plot " +  '"' + output_plot + '"') else ""} \
      ~{if defined(output_thresholds) then ("--output-thresholds " +  '"' + output_thresholds + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    barcode_frequencies: "Path to a two-column tab-delimited file, with barcodes in the first column and frequencies in the second (ignored if --mtx-matrix supplied)"
    mtx_matrix: "Matrix-market format matrix file, with cells by column (overrides --barcode-frequencies if supplied)"
    cells_by_row: "For use with --mtx-matrix: force interpretation of matrix to assume cells are by row, rather than by column (default)"
    label: "Label to use in plot"
    density_bins: "Number of bins used to calculate density plot"
    rory_k_multiplier: "Above-baseline multiplier to calculate roryk threshold"
    output_plot: "File path for output plot"
    output_thresholds: "File path for output file containing calculted thresholds"
  }
  output {
    File out_stdout = stdout()
    File out_output_plot = "${in_output_plot}"
    File out_output_thresholds = "${in_output_thresholds}"
  }
}