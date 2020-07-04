class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_sam2roc.cwl
inputs:
- id: sam
  doc: SAM/BAM with aligned RNF reads(- for standard input).
  type: File
  inputBinding:
    prefix: --sam
- id: roc
  doc: Output ROC file (- for standard output).
  type: File
  inputBinding:
    prefix: --roc
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
- sam2roc
