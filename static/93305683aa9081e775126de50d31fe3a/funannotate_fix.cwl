class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/funannotate_fix.cwl
inputs:
- id: input
  doc: Annotated genome in GenBank format.
  type: boolean
  inputBinding:
    prefix: --input
- id: tbl
  doc: NCBI tbl annotation file.
  type: boolean
  inputBinding:
    prefix: --tbl
- id: drop
  doc: Gene models to remove/drop from annotation. File with locus_tag 1 per line.
  type: boolean
  inputBinding:
    prefix: --drop
- id: out
  doc: Output folder
  type: boolean
  inputBinding:
    prefix: --out
- id: tbl_two_asn
  doc: 'Parameters for tbl2asn. Default: "-l paired-ends"'
  type: boolean
  inputBinding:
    prefix: --tbl2asn
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- fix
