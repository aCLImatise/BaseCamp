class: CommandLineTool
id: ../../../rnftools_et2roc.cwl
inputs:
- id: et
  doc: Input ET file (evaluated read tuples, - for standard input).
  type: File
  inputBinding:
    prefix: --et
- id: roc
  doc: Output ROC file (evaluated reads, - for standard output).
  type: File
  inputBinding:
    prefix: --roc
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- et2roc
