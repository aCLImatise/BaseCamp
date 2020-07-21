class: CommandLineTool
id: ../../../twoBitInfo.cwl
inputs:
- id: n_bed
  doc: instead of seq sizes, output BED records that define  areas with N's in sequence
  type: boolean
  inputBinding:
    prefix: -nBed
- id: non_s
  doc: 'outputs the length of each sequence, but does not count Ns '
  type: boolean
  inputBinding:
    prefix: -noNs
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: input_dot_two_bit
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- twoBitInfo
