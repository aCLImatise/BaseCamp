class: CommandLineTool
id: bFst.cwl
inputs:
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
  doc: 'Seqid                                     '
  type: long
  inputBinding:
    position: 0
- id: in_two_dot
  doc: 'Position                                    '
  type: long
  inputBinding:
    position: 1
- id: in_three_dot
  doc: 'Observed allele frequency in target.        '
  type: long
  inputBinding:
    position: 2
- id: in_four_dot
  doc: 'Estimated allele frequency in target.     '
  type: long
  inputBinding:
    position: 3
- id: in_five_dot
  doc: 'Observed allele frequency in background.  '
  type: long
  inputBinding:
    position: 4
- id: in_six_dot
  doc: 'Estimated allele frequency in background. '
  type: long
  inputBinding:
    position: 5
- id: in_seven_dot
  doc: 'Observed allele frequency combined.         '
  type: long
  inputBinding:
    position: 6
- id: in_eight_dot
  doc: 'Estimated allele frequency in combined.   '
  type: long
  inputBinding:
    position: 7
- id: in_nine_dot
  doc: 'ML estimate of Fst (mean)                   '
  type: long
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- bFst
