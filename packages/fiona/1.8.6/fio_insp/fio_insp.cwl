class: CommandLineTool
id: fio_insp.cwl
inputs:
- id: in_ipython
  doc: Use IPython as interpreter.
  type: boolean?
  inputBinding:
    prefix: --ipython
- id: in_src_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fiona:1.8.6
cwlVersion: v1.1
baseCommand:
- fio
- insp
