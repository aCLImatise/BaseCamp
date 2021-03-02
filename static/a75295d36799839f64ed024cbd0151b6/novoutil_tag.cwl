class: CommandLineTool
id: novoutil_tag.cwl
inputs:
- id: in_ref_idx
  doc: is an indexed reference sequence created by Novoindex.
  type: string
  inputBinding:
    position: 0
- id: in_k_mer
  doc: is a nucleotide tag not longer than index k-mer length.
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
- novoutil
- tag
