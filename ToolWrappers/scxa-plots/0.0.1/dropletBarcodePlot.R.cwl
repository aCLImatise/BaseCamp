class: CommandLineTool
id: dropletBarcodePlot.R.cwl
inputs:
- id: in_barcode_frequencies
  doc: Path to a two-column tab-delimited file, with barcodes in the first column
    and frequencies in the second (ignored if --mtx-matrix supplied)
  type: File?
  inputBinding:
    prefix: --barcode-frequencies
- id: in_mtx_matrix
  doc: Matrix-market format matrix file, with cells by column (overrides --barcode-frequencies
    if supplied)
  type: File?
  inputBinding:
    prefix: --mtx-matrix
- id: in_cells_by_row
  doc: 'For use with --mtx-matrix: force interpretation of matrix to assume cells
    are by row, rather than by column (default)'
  type: boolean?
  inputBinding:
    prefix: --cells-by-row
- id: in_label
  doc: Label to use in plot
  type: string?
  inputBinding:
    prefix: --label
- id: in_density_bins
  doc: Number of bins used to calculate density plot
  type: long?
  inputBinding:
    prefix: --density-bins
- id: in_rory_k_multiplier
  doc: Above-baseline multiplier to calculate roryk threshold
  type: string?
  inputBinding:
    prefix: --roryk-multiplier
- id: in_output_plot
  doc: File path for output plot
  type: File?
  inputBinding:
    prefix: --output-plot
- id: in_output_thresholds
  doc: File path for output file containing calculted thresholds
  type: File?
  inputBinding:
    prefix: --output-thresholds
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_plot
  doc: File path for output plot
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plot)
- id: out_output_thresholds
  doc: File path for output file containing calculted thresholds
  type: File?
  outputBinding:
    glob: $(inputs.in_output_thresholds)
hints: []
cwlVersion: v1.1
baseCommand:
- dropletBarcodePlot.R
