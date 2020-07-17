class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/o_trim.cwl
inputs:
- id: trim_from
  doc: Start position
  type: long
  inputBinding:
    prefix: --trim-from
- id: trim_to
  doc: End position
  type: long
  inputBinding:
    prefix: --trim-to
- id: min_length
  doc: Minimum lenght of a read to be kept
  type: long
  inputBinding:
    prefix: --min-length
- id: output
  doc: Output file name.
  type: File
  inputBinding:
    prefix: --output
- id: file
  doc: FASTA file to subsample
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- o-trim
