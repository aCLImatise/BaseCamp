class: CommandLineTool
id: dropletutils_empty_drops.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R SingleCellExperiment object can be found.
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_lower
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which all barcodes are assumed to correspond to empty droplets.
  type: string
  inputBinding:
    prefix: --lower
- id: in_nite_rs
  doc: An integer scalar specifying the number of iterations to use for the Monte
    Carlo p-value calculations.
  type: long
  inputBinding:
    prefix: --niters
- id: in_test_ambient
  doc: A logical scalar indicating whether results should be returned for barcodes
    with totals less than or equal to lower.
  type: string
  inputBinding:
    prefix: --test-ambient
- id: in_ignore
  doc: A numeric scalar specifying the lower bound on the total UMI count, at or below
    which barcodes will be ignored.
  type: string
  inputBinding:
    prefix: --ignore
- id: in_retain
  doc: A numeric scalar specifying the threshold for the total UMI count above which
    all barcodes are assumed to contain cells.
  type: string
  inputBinding:
    prefix: --retain
- id: in_filter_empty
  doc: Should barcodes estimated to have no cells be removed from the output object?
  type: string
  inputBinding:
    prefix: --filter-empty
- id: in_filter_fdr
  doc: FDR filter for removal of barcodes with no cells
  type: string
  inputBinding:
    prefix: --filter-fdr
- id: in_output_text_file
  doc: File name of text file in which to store output data frame.
  type: File
  inputBinding:
    prefix: --output-text-file
- id: in_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_text_file
  doc: File name of text file in which to store output data frame.
  type: File
  outputBinding:
    glob: $(inputs.in_output_text_file)
- id: out_output_object_file
  doc: File name in which to store serialized SingleCellExperiment object.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- dropletutils-empty-drops.R
