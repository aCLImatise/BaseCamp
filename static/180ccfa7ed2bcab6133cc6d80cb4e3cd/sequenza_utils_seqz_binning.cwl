class: CommandLineTool
id: sequenza_utils_seqz_binning.cwl
inputs:
- id: seq_z
  doc: A seqz file.
  type: string
  inputBinding:
    prefix: --seqz
- id: window
  doc: Window size used for binning the original seqz file. Default is 50.
  type: string
  inputBinding:
    prefix: --window
- id: o
  doc: Output file "-" for STDOUT
  type: string
  inputBinding:
    prefix: -o
- id: tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: string
  inputBinding:
    prefix: --tabix
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- seqz_binning
