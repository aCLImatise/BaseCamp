class: CommandLineTool
id: autoencoder_neural_network.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3
cwlVersion: v1.1
baseCommand:
- autoencoder_neural_network
