class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotate_hits_pyseer.cwl
inputs:
- id: bwa
  doc: Location of bwa executable [default=bwa]
  type: string
  inputBinding:
    prefix: --bwa
- id: tmp_prefix
  doc: Directory to store temporary files [default=./]
  type: string
  inputBinding:
    prefix: --tmp-prefix
- id: km_ers
  doc: Kmers file, filtered output from SEER
  type: string
  inputBinding:
    position: 0
- id: references
  doc: File of reference annotations. First column fasta sequence, second column gff
    annotation, third column 'ref' or 'draft'
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output file
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate_hits_pyseer
