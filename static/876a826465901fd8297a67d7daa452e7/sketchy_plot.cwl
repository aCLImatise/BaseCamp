class: CommandLineTool
id: sketchy_plot.cwl
inputs:
- id: in_index
  doc: 'Path to genotype feature index used in: sketchy'
  type: File?
  inputBinding:
    prefix: --index
- id: in_key
  doc: "Path to genotype feature index key for translation\nfrom numeric.  [required]"
  type: File?
  inputBinding:
    prefix: --key
- id: in_s_ssh
  doc: "Path to sum of ranked sums shared hashes data file\nfrom evaluation  [required]"
  type: File?
  inputBinding:
    prefix: --sssh
- id: in_ssh
  doc: Path to sum of shared hashes data file from
  type: File?
  inputBinding:
    prefix: --ssh
- id: in_palette
  doc: Color palette for output plots [YlGnBu]
  type: string?
  inputBinding:
    prefix: --palette
- id: in_prefix
  doc: Output prefix for all files [sketchy]
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_format
  doc: Output image format [png]
  type: string?
  inputBinding:
    prefix: --format
- id: in_verbose
  doc: Verbose logging output [false]
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_evaluate
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
- id: in_prediction
  doc: '-st, --stable INTEGER  Stability parameter passed to: sketchy evaluate'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- plot
