class: CommandLineTool
id: verify_low_depth.pl.cwl
inputs:
- id: in_bam
  doc: "[REQUIRED]\nThe location for a specific BAM file in the dataset. Multiple\
    \ BAM\nfiles can be input. Example with 3 BAM files:\n--bam bam1=/path/bam1.bam\
    \ --bam bam2=/path/bam2.bam --bam\nbam3=/path/bam3.bam"
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_cores
  doc: "[optional]\nThe number of CPU cores that should be used for the calculations."
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_maximum_depth_position
  doc: "[optional]\nThe maximum depth for a position that is considered to have a\
    \ 'low'\ndepth of coverage."
  type: boolean?
  inputBinding:
    prefix: --max-depth
- id: in_num_cpu
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_bam_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- verify_low_depth.pl
