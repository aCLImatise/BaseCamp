class: CommandLineTool
id: ../../../ribo_run.cwl
inputs:
- id: threads
  doc: "if your cores are hyperthreaded, set number threads to the number of threads\
    \ per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\
    \ under 'Thread(s) per core'.: 1"
  type: string
  inputBinding:
    prefix: --threads
- id: additional_libs
  doc: 'include these libraries in final assembly in addition to the reads supplied
    as -F and -R. They must be supplied according to SPAdes arg naming scheme. Use
    at own risk.default: None'
  type: string
  inputBinding:
    prefix: --additional_libs
- id: serialize
  doc: 'if --serialize, runs seeding and assembly without multiprocessing. We recommend
    this for machines with less than 8GB RAM: False'
  type: boolean
  inputBinding:
    prefix: --serialize
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- run
