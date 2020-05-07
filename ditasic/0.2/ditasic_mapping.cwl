class: CommandLineTool
id: ditasic_mapping.py.cwl
inputs:
- id: length
  doc: 'Length of reads used in similarity matrix creation. [default: 100]'
  type: long
  inputBinding:
    prefix: --length
- id: index
  doc: Path to kallisto index for all files.
  type: string
  inputBinding:
    prefix: --index
- id: temp
  doc: 'Directory to store temporary simulated datasets and TSV files. [default: ./temp]'
  type: string
  inputBinding:
    prefix: --temp
outputs: []
cwlVersion: v1.1
baseCommand:
- ditasic_mapping.py
