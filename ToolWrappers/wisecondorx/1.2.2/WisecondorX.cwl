class: CommandLineTool
id: WisecondorX.cwl
inputs:
- id: in_loglevel
  doc: ''
  type: string?
  inputBinding:
    prefix: --loglevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wisecondorx:1.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- WisecondorX
