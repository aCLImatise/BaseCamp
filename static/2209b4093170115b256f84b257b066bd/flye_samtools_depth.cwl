class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_depth.cwl
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
- id: read_ignore_reads
  doc: read length threshold (ignore reads shorter than <int>) [0]
  type: long
  inputBinding:
    prefix: -l
- id: d_slash_m
  doc: maximum coverage depth [8000]. If 0, depth is set to the maximum integer value,
    effectively removing any depth limit.
  type: long
  inputBinding:
    prefix: -d/-m
- id: base_quality_threshold
  doc: base quality threshold [0]
  type: long
  inputBinding:
    prefix: -q
- id: mapping_quality_threshold
  doc: mapping quality threshold [0]
  type: long
  inputBinding:
    prefix: -Q
- id: chrfromto_region_opt
  doc: <chr:from-to>    region --input-fmt-option OPT[=VAL] Specify a single input
    file format option in the form of OPTION or OPTION=VALUE --reference FILE Reference
    sequence FASTA FILE [null]
  type: boolean
  inputBinding:
    prefix: -r
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: depth
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- depth
