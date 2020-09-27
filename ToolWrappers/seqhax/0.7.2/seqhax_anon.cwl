class: CommandLineTool
id: seqhax_anon.cwl
inputs:
- id: in_use_base_ids
  doc: Use base-16 sequence IDs.
  type: boolean
  inputBinding:
    prefix: -x
- id: in_treat_reads_add
  doc: Treat reads as pairs, add /1 or /2 to headers.
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqhax
- anon
