class: CommandLineTool
id: lordec_correct.cwl
inputs:
- id: in_solidthreshold_solid_kmer
  doc: '|solid_threshold <solid k-mer abundance threshold>'
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lordec-correct
