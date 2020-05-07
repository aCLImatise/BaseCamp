class: CommandLineTool
id: sketchy_plot.cwl
inputs:
- id: index
  doc: 'Path to genotype feature index used in: sketchy evaluate  [required]'
  type: File
  inputBinding:
    prefix: --index
- id: key
  doc: Path to genotype feature index key for translation from numeric.  [required]
  type: File
  inputBinding:
    prefix: --key
- id: s_ssh
  doc: Path to sum of ranked sums shared hashes data file from evaluation  [required]
  type: File
  inputBinding:
    prefix: --sssh
- id: ssh
  doc: Path to sum of shared hashes data file from prediction
  type: File
  inputBinding:
    prefix: --ssh
- id: stable
  doc: 'Stability parameter passed to: sketchy evaluate'
  type: long
  inputBinding:
    prefix: --stable
- id: palette
  doc: Color palette for output plots [YlGnBu]
  type: string
  inputBinding:
    prefix: --palette
- id: prefix
  doc: Output prefix for all files [sketchy]
  type: string
  inputBinding:
    prefix: --prefix
- id: format
  doc: Output image format [png]
  type: string
  inputBinding:
    prefix: --format
- id: verbose
  doc: Verbose logging output [false]
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- plot
