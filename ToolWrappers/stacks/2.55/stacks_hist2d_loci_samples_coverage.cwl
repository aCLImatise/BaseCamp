class: CommandLineTool
id: stacks_hist2d_loci_samples_coverage.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- stacks-hist2d-loci-samples-coverage
