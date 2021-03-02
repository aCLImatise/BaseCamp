class: CommandLineTool
id: 2ndscore_in.fasta.cwl
inputs:
- id: in_gc
  doc: =-2.3 --au=-0.9 --gu=1.3 --mm=3.5 --gap=6
  type: boolean?
  inputBinding:
    prefix: --gc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- 2ndscore
- in.fasta
