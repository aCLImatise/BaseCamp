class: CommandLineTool
id: sequenceDiversity.cwl
inputs:
- id: in_version
  doc: ': 1.0.2'
  type: boolean?
  inputBinding:
    prefix: -Version
- id: in_contact
  doc: ': zev.kronenberg [at] gmail.com'
  type: boolean?
  inputBinding:
    prefix: -Contact
- id: in_notes
  doc: ': If you find a bug, please open a report on github!'
  type: boolean?
  inputBinding:
    prefix: -Notes
- id: in_support
  doc: ': Please post questions to biostars.org'
  type: boolean?
  inputBinding:
    prefix: -Support
- id: in_contribution
  doc: ":\nZev Kronenberg (UW Genome Sciences)\nMark Yandell   (UU Human genetics)\n\
    Mike Shapiro   (UU Biology)\nEJ Osborne     (UU Human genetics)\nBrett Kennedy\
    \  (UU Human genetics)\nDaniel Ence    (UU Human genetics)\nErik Garrison  (Wellcome\
    \ Trust Sanger Institute)\nTravis Collier (UC Davis)\n-     Your name goes here\
    \       -'"
  type: boolean?
  inputBinding:
    prefix: -Contribution
- id: in_one_dot
  doc: seqid
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: start of window
  type: long
  inputBinding:
    position: 1
- id: in_three_dot
  doc: 'end of window  '
  type: long
  inputBinding:
    position: 2
- id: in_four_dot
  doc: 'pi             '
  type: long
  inputBinding:
    position: 3
- id: in_five_dot
  doc: 'eHH            '
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- sequenceDiversity
