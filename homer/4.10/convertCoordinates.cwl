class: CommandLineTool
id: convertCoordinates.pl.cwl
inputs:
- id: type
  doc: <directory|peaks|tags|bed|gtf> (input is a tag directory, peak file, tags file,
    or BED file, or GTF file)
  type: boolean
  inputBinding:
    prefix: -type
- id: p
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
outputs: []
cwlVersion: v1.1
baseCommand:
- convertCoordinates.pl
