class: CommandLineTool
id: ../../../2ndscore_in.fasta.cwl
inputs:
- id: in_gc
  doc: =-2.3 --au=-0.9 --gu=1.3 --mm=3.5 --gap=6
  type: boolean
  inputBinding:
    prefix: --gc
- id: in_max_loop
  doc: ''
  type: long
  inputBinding:
    prefix: --max-loop
- id: in_loop_penalty
  doc: ',2,3,4,5,6,7,8,9,10,11'
  type: long
  inputBinding:
    prefix: --loop-penalty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- 2ndscore
- in.fasta
