class: CommandLineTool
id: refseqget.cwl
inputs:
- id: in_ref_sequence
  doc: ': enter refseq value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean
  inputBinding:
    prefix: -refsequence
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refseqget
