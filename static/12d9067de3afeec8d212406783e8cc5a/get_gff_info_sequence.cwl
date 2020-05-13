class: CommandLineTool
id: get_gff_info_sequence.cwl
inputs:
- id: reverse
  doc: Reverse complement sequences on the - strand
  type: boolean
  inputBinding:
    prefix: --reverse
- id: no_wrap
  doc: Write the sequences on one line
  type: boolean
  inputBinding:
    prefix: --no-wrap
- id: split
  doc: Split the sequence header of the reference at the first space, to emulate BLAST
    behaviour
  type: boolean
  inputBinding:
    prefix: --split
- id: reference
  doc: Fasta file containing the reference sequences of the GFF file
  type: File
  inputBinding:
    prefix: --reference
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- sequence
