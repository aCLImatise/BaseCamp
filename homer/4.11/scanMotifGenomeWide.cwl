class: CommandLineTool
id: ../../../scanMotifGenomeWide.pl.cwl
inputs:
- id: five_p
  doc: (report positions centered on the 5' start of the motif)
  type: boolean
  inputBinding:
    prefix: -5p
- id: bed
  doc: (format as a BED file, i.e. for UCSC upload) -int (round motif scores to nearest
    integer, use if making bigBed file)
  type: boolean
  inputBinding:
    prefix: -bed
- id: homer_one
  doc: (use the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: homer_two
  doc: (use homer2 instead of the original homer, default)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: keep_all
  doc: (keep ALL sites, even ones that overlap, default is to keep one)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: mask
  doc: (search for motifs in repeat masked sequence)
  type: boolean
  inputBinding:
    prefix: -mask
- id: number_cpus_use
  doc: <#> (Number of CPUs to use)
  type: boolean
  inputBinding:
    prefix: -p
- id: motif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scanMotifGenomeWide.pl
