class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bamToFastq.cwl
inputs:
- id: fq_two
  doc: FASTQ for second end.  Used if BAM contains paired-end data. BAM should be
    sorted by query name is creating paired FASTQ.
  type: boolean
  inputBinding:
    prefix: -fq2
- id: tags
  doc: Create FASTQ based on the mate info in the BAM R2 and Q2 tags.
  type: boolean
  inputBinding:
    prefix: -tags
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: fq
  doc: ''
  type: string
  inputBinding:
    prefix: -fq
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToFastq
