class: CommandLineTool
id: twoBitInfo.cwl
inputs:
- id: in_mask_bed
  doc: "of seq sizes, output BED records that define\nareas with masked sequence"
  type: string
  inputBinding:
    prefix: -maskBed
- id: in_n_bed
  doc: "instead of seq sizes, output BED records that define\nareas with N's in sequence"
  type: boolean
  inputBinding:
    prefix: -nBed
- id: in_non_s
  doc: outputs the length of each sequence, but does not count Ns
  type: boolean
  inputBinding:
    prefix: -noNs
- id: in_udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_input_dot_two_bit
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- twoBitInfo
