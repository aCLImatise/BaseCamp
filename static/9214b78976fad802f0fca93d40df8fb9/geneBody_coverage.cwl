class: CommandLineTool
id: ../../../geneBody_coverage.py.cwl
inputs:
- id: input
  doc: 'Input file(s) in BAM format. "-i" takes these input: 1) a single BAM file.
    2) "," separated BAM files. 3) directory containing one or more bam files. 4)
    plain text file containing the path of one or more bam file (Each row is a BAM
    file path). All BAM files should be sorted and indexed using samtools.'
  type: string
  inputBinding:
    prefix: --input
- id: ref_gene
  doc: Reference gene model in bed format. [required]
  type: string
  inputBinding:
    prefix: --refgene
- id: minimum_length
  doc: Minimum mRNA length (bp). mRNA smaller than "min_mRNA_length" will be skipped.
    default=100
  type: long
  inputBinding:
    prefix: --minimum_length
- id: format
  doc: Output file format, 'pdf', 'png' or 'jpeg'. default=pdf
  type: string
  inputBinding:
    prefix: --format
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- geneBody_coverage.py
