class: CommandLineTool
id: generate_names.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- generate-names.pl
