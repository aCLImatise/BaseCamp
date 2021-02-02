class: CommandLineTool
id: bigWigAverageOverBed.cwl
inputs:
- id: in_stats
  doc: '- Output a collection of overall statistics to stat.ra file'
  type: File
  inputBinding:
    prefix: -stats
- id: in_bed_out
  doc: '- Make output bed that is echo of input bed but with mean column appended'
  type: string
  inputBinding:
    prefix: -bedOut
- id: in_sample_around_center
  doc: "- Take sample at region N bases wide centered around bed item, rather\nthan\
    \ the usual sample in the bed item."
  type: string
  inputBinding:
    prefix: -sampleAroundCenter
- id: in_minmax
  doc: '- include two additional columns containing the min and max observed in the
    area.'
  type: boolean
  inputBinding:
    prefix: -minMax
- id: in_in_dot_bw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stats
  doc: '- Output a collection of overall statistics to stat.ra file'
  type: File
  outputBinding:
    glob: $(inputs.in_stats)
cwlVersion: v1.1
baseCommand:
- bigWigAverageOverBed
