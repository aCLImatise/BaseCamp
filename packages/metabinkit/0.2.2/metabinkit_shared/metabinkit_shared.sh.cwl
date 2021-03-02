class: CommandLineTool
id: metabinkit_shared.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1
cwlVersion: v1.1
baseCommand:
- metabinkit_shared.sh
