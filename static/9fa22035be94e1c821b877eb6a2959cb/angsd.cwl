class: CommandLineTool
id: angsd.cwl
inputs:
- id: n_threads
  doc: 1       Number of threads to use
  type: boolean
  inputBinding:
    prefix: -nThreads
- id: n_queue_size
  doc: -1      Maximum number of queud elements
  type: boolean
  inputBinding:
    prefix: -nQueueSize
- id: how_often
  doc: 100     How often should the program show progress
  type: boolean
  inputBinding:
    prefix: -howOften
- id: do_bcf
  doc: Wrapper around -dopost -domajorminor -dofreq -gl -dovcf docounts
  type: boolean
  inputBinding:
    prefix: -doBcf
outputs: []
cwlVersion: v1.1
baseCommand:
- angsd
