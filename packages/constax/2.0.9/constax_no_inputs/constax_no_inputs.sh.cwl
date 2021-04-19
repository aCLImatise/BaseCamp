class: CommandLineTool
id: constax_no_inputs.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/constax:2.0.9--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- constax_no_inputs.sh
