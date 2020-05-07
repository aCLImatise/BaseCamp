class: CommandLineTool
id: out_to_chain.py.cwl
inputs:
- id: input
  doc: File to process.
  type: string
  inputBinding:
    position: 0
- id: species
  doc: "SPECIES Names of target and query species (respectively) in the alignment.\
    \ (default: ['homo_sapiens', 'mus_musculus'])"
  type: string
  inputBinding:
    prefix: --species
- id: chr_sizes
  doc: 'CHRSIZES Chromosome sizes for the given species. (default: None)'
  type: string
  inputBinding:
    prefix: --chrsizes
- id: output
  doc: 'Output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- out_to_chain.py
