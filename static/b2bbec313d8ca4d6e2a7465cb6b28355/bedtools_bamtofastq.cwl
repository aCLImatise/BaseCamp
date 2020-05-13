class: CommandLineTool
id: bedtools_bamtofastq.cwl
inputs:
- id: bam_to_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fq2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- bamtofastq
