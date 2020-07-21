class: CommandLineTool
id: ../../../htsbox_mapchk.cwl
inputs:
- id: region
  doc: region [null]
  type: string
  inputBinding:
    prefix: -r
- id: threshold_high_quality
  doc: threshold for HIGH quality [20]
  type: long
  inputBinding:
    prefix: -q
- id: skip_sites_excessive
  doc: skip sites with excessive non-ref bases [0.35]
  type: double
  inputBinding:
    prefix: -f
- id: bed_file_include
  doc: BED file to include []
  type: File
  inputBinding:
    prefix: -b
- id: min_nonref_count
  doc: min non-ref count [0]
  type: long
  inputBinding:
    prefix: -d
- id: one
  doc: exclude read1
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: exclude read2
  type: boolean
  inputBinding:
    prefix: '-2'
- id: aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- mapchk
