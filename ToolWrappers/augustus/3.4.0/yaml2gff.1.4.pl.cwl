class: CommandLineTool
id: yaml2gff.1.4.pl.cwl
inputs:
- id: in_filter_status
  doc: filter out alignments with given status, e.g. 'incomplete'
  type: string?
  inputBinding:
    prefix: --filterstatus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- yaml2gff.1.4.pl
