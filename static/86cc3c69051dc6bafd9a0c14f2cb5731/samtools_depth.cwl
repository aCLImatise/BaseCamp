class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_depth.cwl
inputs:
- id: list_positions_regions
  doc: list of positions or regions
  type: string
  inputBinding:
    prefix: -b
- id: list_input_bam
  doc: list of input BAM filenames, one per line [null]
  type: string
  inputBinding:
    prefix: -f
- id: minqlen
  doc: minQLen
  type: long
  inputBinding:
    prefix: -l
- id: base_quality_threshold
  doc: base quality threshold
  type: long
  inputBinding:
    prefix: -q
- id: mapping_quality_threshold
  doc: mapping quality threshold
  type: long
  inputBinding:
    prefix: -Q
- id: chrfromto__region
  doc: <chr:from-to>    region
  type: boolean
  inputBinding:
    prefix: -r
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- depth
