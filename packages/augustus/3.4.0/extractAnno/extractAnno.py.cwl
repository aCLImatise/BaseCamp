class: CommandLineTool
id: extractAnno.py.cwl
inputs:
- id: in_chunks
  doc: "a list of one or more positive integers indicating the\nchunk/s for which\
    \ we want to build a minimal\nannotation from given Ensembl.\n"
  type: string[]
  inputBinding:
    prefix: --chunks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- extractAnno.py
