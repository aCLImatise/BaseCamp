class: CommandLineTool
id: normalize_table.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_path
  doc: path to the input BIOM file (e.g., the output from OTU picking) or directory
    containing input BIOM files for batch processing [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --input_path
- id: out_path
  doc: output filename for single file operation, or output directory for batch processing
    [REQUIRED if not passing -l]
  type: string
  inputBinding:
    prefix: --out_path
- id: output_css_statistics
  doc: 'output CSS statistics file. This will be a directory for batch processing,
    and a filename for single file operation [default: False]'
  type: boolean
  inputBinding:
    prefix: --output_CSS_statistics
- id: de_seq_negatives_to_zero
  doc: 'replace negative numbers produced by the DESeq normalization technique with
    zeros [default: False]'
  type: boolean
  inputBinding:
    prefix: --DESeq_negatives_to_zero
- id: algorithm
  doc: 'normalization algorithm to apply to input BIOM table(s). [default: CSS] Available
    options are: CSS, DESeq2'
  type: string
  inputBinding:
    prefix: --algorithm
- id: list_algorithms
  doc: 'show available normalization algorithms and exit [default: False]'
  type: boolean
  inputBinding:
    prefix: --list_algorithms
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize_table.py
