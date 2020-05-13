class: CommandLineTool
id: dropletutils_empty_drops.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: lower
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which all barcodes are assumed to correspond to empty droplets.
  type: string
  inputBinding:
    prefix: --lower
- id: nite_rs
  doc: An integer scalar specifying the number of iterations to use for the Monte
    Carlo p-value calculations.
  type: string
  inputBinding:
    prefix: --niters
- id: test_ambient
  doc: A logical scalar indicating whether results should be returned for barcodes
    with totals less than or equal to lower.
  type: string
  inputBinding:
    prefix: --test-ambient
- id: ignore
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which barcodes will be ignored.
  type: string
  inputBinding:
    prefix: --ignore
- id: retain
  doc: A numeric scalar specifying the threshold for the total UMI count above which
    all barcodes are assumed to contain cells.
  type: string
  inputBinding:
    prefix: --retain
- id: filter_empty
  doc: Should barcodes estimated to have no cells be removed from the output object?
  type: string
  inputBinding:
    prefix: --filter-empty
- id: filter_fdr
  doc: FDR filter for removal of barcodes with no cells
  type: string
  inputBinding:
    prefix: --filter-fdr
- id: output_text_file
  doc: File name of text file in which to store output data frame.
  type: string
  inputBinding:
    prefix: --output-text-file
- id: output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dropletutils-empty-drops.R
