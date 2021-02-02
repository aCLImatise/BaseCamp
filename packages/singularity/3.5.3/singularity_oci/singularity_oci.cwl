class: CommandLineTool
id: ../../../singularity_oci.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- oci
