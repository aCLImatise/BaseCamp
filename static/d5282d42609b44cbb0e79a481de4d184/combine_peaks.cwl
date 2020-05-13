class: CommandLineTool
id: combine_peaks.cwl
inputs:
- id: i
  doc: '[FNAME [FNAME ...]], --input [FNAME [FNAME ...]] MACS2 summit or narrowPeak
    files'
  type: boolean
  inputBinding:
    prefix: -i
- id: genome
  doc: Genome name or genome file
  type: string
  inputBinding:
    prefix: --genome
- id: window
  doc: Window size (default 200)
  type: string
  inputBinding:
    prefix: --window
- id: scale
  doc: Scale summit values
  type: boolean
  inputBinding:
    prefix: --scale
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_peaks
