class: CommandLineTool
id: poppunk_calculate_rand_indices.py.cwl
inputs:
- id: input
  doc: Comma separated list of clustering CSVs between which indices should be calculated
    (required)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Name of output file [default = rand.out]
  type: string
  inputBinding:
    prefix: --output
- id: subset
  doc: File with list of sequences to extract for comparison, one per line, no header;
    must be present in all CSVs
  type: string
  inputBinding:
    prefix: --subset
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk_calculate_rand_indices.py
