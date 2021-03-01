class: CommandLineTool
id: gcov2perl.cwl
inputs:
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: -db
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- gcov2perl
