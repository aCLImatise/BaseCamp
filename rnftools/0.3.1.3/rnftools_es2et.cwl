class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_es2et.cwl
inputs:
- id: es
  doc: Input ES file (evaluated segments, - for standard input).
  type: File
  inputBinding:
    prefix: --es
- id: et
  doc: Output ET file (evaluated read tuples, - for standard output).
  type: File
  inputBinding:
    prefix: --et
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- es2et
