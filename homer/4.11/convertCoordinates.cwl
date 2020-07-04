class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convertCoordinates.pl.cwl
inputs:
- id: type
  doc: (input is a tag directory, peak file, tags file, or BED file, or GTF file)
  type: Directory
  inputBinding:
    prefix: -type
- id: number_use_default
  doc: '<#> (Number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: min_match
  doc: '<#> (minimum % of nucleotides that must match, default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -minMatch
- id: directory
  doc: (input is a tag directory, default)
  type: boolean
  inputBinding:
    prefix: -directory
- id: peaks
  doc: (input is a peak file)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: tags
  doc: (input is a tag file)
  type: boolean
  inputBinding:
    prefix: -tags
- id: bed
  doc: (input is a bed file)
  type: boolean
  inputBinding:
    prefix: -bed
- id: gtf
  doc: (input is a gtf file)
  type: boolean
  inputBinding:
    prefix: -gtf
- id: lift_over_dot_over_dot_chain_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file_slash_directory
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file_slash_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convertCoordinates.pl
