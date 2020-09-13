class: CommandLineTool
id: ../../../rebaler.cwl
inputs:
- id: in_direct
  doc: "If set, Rebaler will polish the given genome without\nfirst producing an unpolished\
    \ version (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --direct
- id: in_threads
  doc: "Number of threads to use for alignment and polishing\n(default: 8)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_random
  doc: "If a part of the reference is missing, replace it\nwith random sequence (default:\
    \ leave it as the\nreference sequence)"
  type: boolean
  inputBinding:
    prefix: --random
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rebaler
