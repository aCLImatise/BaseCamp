class: CommandLineTool
id: blobtools_seqfilter.cwl
inputs:
- id: in_in_file
  doc: FASTA file of sequences (Headers are split at whitespaces)
  type: File
  inputBinding:
    prefix: --infile
- id: in_list
  doc: TXT file containing headers of sequences to keep
  type: File
  inputBinding:
    prefix: --list
- id: in_out
  doc: Output prefix
  type: string
  inputBinding:
    prefix: --out
- id: in_invert
  doc: Invert filtering (Sequences w/ headers NOT in list)
  type: boolean
  inputBinding:
    prefix: --invert
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blobtools
- seqfilter
