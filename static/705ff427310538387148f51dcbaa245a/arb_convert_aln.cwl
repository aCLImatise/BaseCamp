class: CommandLineTool
id: arb_convert_aln.cwl
inputs:
- id: in_where
  doc: "INFMT  may be 'GenBank', 'EMBL', 'AE2' or 'SwissProt' and\nOUTFMT may be 'GenBank',\
    \ 'EMBL', 'AE2', 'NEXUS', 'PHYLIP', 'FASTDNAML', 'GCG' or 'Printable'"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_convert_aln
