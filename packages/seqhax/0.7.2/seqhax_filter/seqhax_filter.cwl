class: CommandLineTool
id: seqhax_filter.cwl
inputs:
- id: in_minimum_length_read
  doc: Minimum length of each read. [default 1]
  type: long
  inputBinding:
    prefix: -l
- id: in_output_fasta_qualities
  doc: Output as fasta (no qualities)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_paired_mode_reads
  doc: 'Paired mode: reads are kept/discared in pairs'
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
- filter
