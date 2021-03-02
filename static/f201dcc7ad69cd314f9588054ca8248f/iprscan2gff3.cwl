class: CommandLineTool
id: iprscan2gff3.cwl
inputs:
- id: in_ipr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_iprs_can_dot_raw
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_added
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_domains
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_takes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_an
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_builds
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_interpro_scan
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_them
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_track
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_raw
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_gbrowse
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_formated
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_report
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_features
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- iprscan2gff3
