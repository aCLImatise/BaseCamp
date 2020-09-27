class: CommandLineTool
id: samtools_depth.cwl
inputs:
- id: in_list_positions_regions
  doc: list of positions or regions
  type: string
  inputBinding:
    prefix: -b
- id: in_list_input_bam
  doc: list of input BAM filenames, one per line [null]
  type: string
  inputBinding:
    prefix: -f
- id: in_minqlen
  doc: minQLen
  type: long
  inputBinding:
    prefix: -l
- id: in_base_quality_threshold
  doc: base quality threshold
  type: long
  inputBinding:
    prefix: -q
- id: in_mapping_quality_threshold
  doc: mapping quality threshold
  type: long
  inputBinding:
    prefix: -Q
- id: in_chrfromto__region
  doc: <chr:from-to>    region
  type: boolean
  inputBinding:
    prefix: -r
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- depth
