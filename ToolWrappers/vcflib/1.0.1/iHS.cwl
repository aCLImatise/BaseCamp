class: CommandLineTool
id: iHS.cwl
inputs:
- id: in_region
  doc: :1-1000 > STDOUT 2> STDERR
  type: long?
  inputBinding:
    prefix: --region
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
- id: in_target
  doc: ''
  type: long?
  inputBinding:
    prefix: --target
- id: in_ihs
  doc: --target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- iHS
