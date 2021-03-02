class: CommandLineTool
id: paraclu_cut.cwl
inputs:
- id: in_maximum_cluster_length
  doc: maximum cluster length (default 200)
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_minimum_density_increase
  doc: minimum density increase (default 2)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_density_increase_applies
  doc: density increase applies to single clusters, not cumulatively
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/paraclu:10--he513fc3_0
cwlVersion: v1.1
baseCommand:
- paraclu-cut
