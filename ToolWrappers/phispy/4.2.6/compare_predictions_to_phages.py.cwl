class: CommandLineTool
id: compare_predictions_to_phages.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- compare_predictions_to_phages.py
