class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ribo_try.cwl
inputs:
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn/riboSeed_sample_results'
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: cores
  doc: 'cores to be used; default: 2'
  type: string
  inputBinding:
    prefix: --cores
- id: threads
  doc: "if your cores are hyperthreaded, set number threads to the number of threads\
    \ per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\
    \ under 'Thread(s) per core'.: 1"
  type: string
  inputBinding:
    prefix: --threads
- id: memory
  doc: 'system memory available; default: 8'
  type: string
  inputBinding:
    prefix: --memory
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- try
