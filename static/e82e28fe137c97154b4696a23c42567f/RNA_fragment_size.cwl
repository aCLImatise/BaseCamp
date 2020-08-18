class: CommandLineTool
id: ../../../RNA_fragment_size.py.cwl
inputs:
- id: input
  doc: Input BAM file
  type: string
  inputBinding:
    prefix: --input
- id: ref_gene
  doc: Reference gene model in BED format. Must be strandard 12-column BED file. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: mapq
  doc: Minimum mapping quality (phred scaled) for an alignment to be called "uniquely
    mapped". default=30
  type: string
  inputBinding:
    prefix: --mapq
- id: frag_num
  doc: Minimum number of fragment. default=3
  type: string
  inputBinding:
    prefix: --frag-num
outputs: []
cwlVersion: v1.1
baseCommand:
- RNA_fragment_size.py
