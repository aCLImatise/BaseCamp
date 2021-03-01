class: CommandLineTool
id: segmentFst.cwl
inputs:
- id: in_version
  doc: ': v1.0.0-rc0-349-g45c6-dirty'
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- segmentFst
