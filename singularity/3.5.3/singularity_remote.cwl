class: CommandLineTool
id: ../../../singularity_remote.cwl
inputs:
- id: in_config
  doc: "path to the file holding remote endpoint\nconfigurations (default\n\"/root/.singularity/remote.yaml\"\
    )"
  type: File
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- remote
