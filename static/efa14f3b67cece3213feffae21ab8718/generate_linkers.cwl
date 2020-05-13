class: CommandLineTool
id: generate_linkers.py.cwl
inputs:
- id: hits_fps
  doc: Target primer hits files to generate linkers with. Separate multiple files
    with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --hits_fps
- id: fast_a_fps
  doc: Fasta filepath(s).  Must include all fasta sequences used to generate the hits
    files.  Separate multiple files with a colon. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fps
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_linkers.py
