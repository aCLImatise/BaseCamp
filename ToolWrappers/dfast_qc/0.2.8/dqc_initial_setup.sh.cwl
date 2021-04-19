class: CommandLineTool
id: dqc_initial_setup.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast_qc:0.2.8--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- dqc_initial_setup.sh
