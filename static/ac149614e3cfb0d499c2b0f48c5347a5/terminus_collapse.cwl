class: CommandLineTool
id: terminus_collapse.cwl
inputs:
- id: consensus_thresh
  doc: 'threshold for edge consensus [default: 0.5]'
  type: string
  inputBinding:
    prefix: --consensus-thresh
- id: dirs
  doc: '...                         direcotories to read the group files from'
  type: string
  inputBinding:
    prefix: --dirs
- id: out
  doc: prefix where output would be written
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: 'number of threads to use when writing down the collapsed quantifications [default:
    8]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- terminus
- collapse
