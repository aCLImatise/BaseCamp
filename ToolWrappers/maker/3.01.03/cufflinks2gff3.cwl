class: CommandLineTool
id: cufflinks2gff3.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pseudogenes_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_ouput
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_can
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_models
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_strand_less
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_features
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_which
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_stdout
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_correspond
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_cufflinks
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_ignored_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_repetative
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_elements
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_so
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_maker
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_single
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_transcripts_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_you
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_because
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_via
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_need
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_pass_through_dot
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
- cufflinks2gff3
