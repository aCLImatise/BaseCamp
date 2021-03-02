class: CommandLineTool
id: ktImportRDPComparison.cwl
inputs:
- id: in_rdp_comparison
  doc: RDP comparison result downloaded as text.
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "A name for each library to appear in the chart. The default\nis \"Library\
    \ [1/2]\".\n_________"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktImportRDPComparison
