class: CommandLineTool
id: seqhax_preapp.cwl
inputs:
- id: in_add_seq_adding
  doc: Add SEQ as prefix, adding quality charachters if fastq.
  type: string
  inputBinding:
    prefix: -P
- id: in_add_seq_suffix
  doc: Add SEQ as suffix, adding quality charachters if fastq.
  type: string
  inputBinding:
    prefix: -S
- id: in_paired_mode_reads
  doc: 'Paired mode: reads are kept/discared in pairs'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_seq_hax
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqhax
- preapp
