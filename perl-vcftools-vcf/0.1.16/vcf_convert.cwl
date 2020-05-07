class: CommandLineTool
id: vcf_convert.cwl
inputs:
- id: refseq
  doc: The reference sequence in samtools faindexed fasta file. (Not required with
    SNPs only.)
  type: File
  inputBinding:
    prefix: --refseq
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-convert
