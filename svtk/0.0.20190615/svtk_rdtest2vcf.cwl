class: CommandLineTool
id: ../../../svtk_rdtest2vcf.cwl
inputs:
- id: contigs
  doc: Reference fasta index (.fai). If provided, contigs in index will be used in
    VCF header. Otherwise all GRCh37 contigs will be used in header.
  type: string
  inputBinding:
    prefix: --contigs
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- rdtest2vcf
