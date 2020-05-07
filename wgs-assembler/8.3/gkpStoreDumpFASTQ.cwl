class: CommandLineTool
id: gkpStoreDumpFASTQ.cwl
inputs:
- id: o
  doc: write files fastq-prefix.1.fastq, fastq-prefix.2.fastq, fastq-prefix.paired.fastq,
    fastq-prefix.unmated.fastq
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: output only fragments in library number libToDump (NOT IMPLEMENTED)
  type: string
  inputBinding:
    prefix: -l
- id: b
  doc: output starting at fragment iid
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: output stopping after fragment iid
  type: string
  inputBinding:
    prefix: -e
- id: c
  doc: output clear range 'clrName'
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- gkpStoreDumpFASTQ
