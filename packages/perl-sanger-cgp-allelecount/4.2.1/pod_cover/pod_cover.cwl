class: CommandLineTool
id: pod_cover.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- pod_cover
