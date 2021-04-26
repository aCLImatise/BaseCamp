class: CommandLineTool
id: cwltool2wdl.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- cwltool2wdl.py
