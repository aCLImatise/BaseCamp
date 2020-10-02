class: CommandLineTool
id: scanMotifGenomeWide.pl.cwl
inputs:
- id: in_five_p
  doc: (report positions centered on the 5' start of the motif)
  type: boolean
  inputBinding:
    prefix: -5p
- id: in_bed
  doc: (format as a BED file, i.e. for UCSC upload)
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_int
  doc: (round motif scores to nearest integer, use if making bigBed file)
  type: boolean
  inputBinding:
    prefix: -int
- id: in_homer_one
  doc: (use the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: in_homer_two
  doc: (use homer2 instead of the original homer, default)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: in_keep_all
  doc: (keep ALL sites, even ones that overlap, default is to keep one)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: in_mask
  doc: (search for motifs in repeat masked sequence)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_number_cpus_use
  doc: <#> (Number of CPUs to use)
  type: boolean
  inputBinding:
    prefix: -p
- id: in_motif
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome
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
- scanMotifGenomeWide.pl
