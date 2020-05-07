class: CommandLineTool
id: compute_taxonomy_ratios.py.cwl
inputs:
- id: verbose
  doc: 'Print information during execution -- useful for debugging [default: False]'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: The input BIOM table [REQUIRED if not passing -s]
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Path to where the output will be written; this will be a new sample metadata
    mapping file [REQUIRED if not passing -s]
  type: string
  inputBinding:
    prefix: --output
- id: increased
  doc: Comma-separated list of taxa whose abundances are included in the numerator
    of the ratio [REQUIRED if not passing -s or -e]
  type: string
  inputBinding:
    prefix: --increased
- id: decreased
  doc: Comma-separated list of taxa whose abundances are included in the denominator
    of the ratio [REQUIRED if not passing -s or -e]
  type: string
  inputBinding:
    prefix: --decreased
- id: index
  doc: 'Apply an existing index. Options are: md [REQUIRED if not passing -s or --increased
    and --decreased]'
  type: string
  inputBinding:
    prefix: --index
- id: name
  doc: "Column name for the index in the output file [default: 'index', or value passed\
    \ as -e if provided]"
  type: string
  inputBinding:
    prefix: --name
- id: mapping_file
  doc: 'A mapping file containing data that should be included in the output file
    [default: no additional mapping file data is included in output]'
  type: string
  inputBinding:
    prefix: --mapping_file
- id: key
  doc: 'Metadata key to use for computing index [default: taxonomy]'
  type: string
  inputBinding:
    prefix: --key
- id: show_indices
  doc: 'List known indices and exit [default: False]'
  type: boolean
  inputBinding:
    prefix: --show_indices
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_taxonomy_ratios.py
