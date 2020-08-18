class: CommandLineTool
id: ../../../rnftools_sam2es.cwl
inputs:
- id: sam
  doc: SAM/BAM with aligned RNF reads(- for standard input).
  type: File
  inputBinding:
    prefix: --sam
- id: es
  doc: Output ES file (evaluated segments, - for standard output).
  type: File
  inputBinding:
    prefix: --es
- id: allowed_delta
  doc: 'Tolerance of difference of coordinates between true (i.e., expected) alignment
    and real alignment (very important parameter!) (default: 5).'
  type: long
  inputBinding:
    prefix: --allowed-delta
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- sam2es
