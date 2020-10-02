class: CommandLineTool
id: create_fake_genome.py.cwl
inputs:
- id: in_locus
  doc: locus in format <chr>:<start>-<end>
  type: string
  inputBinding:
    prefix: --locus
- id: in_strand
  doc: '{+,-}        strand of locus'
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_output_prefix
  doc: "Output prefix\n"
  type: string
  inputBinding:
    prefix: --output_prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- create_fake_genome.py
