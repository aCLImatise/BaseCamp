class: CommandLineTool
id: fasta2reads.py.cwl
inputs:
- id: step
  doc: Step for the sliding window. Default is 1.
  type: string
  inputBinding:
    prefix: --step
- id: gap
  doc: Size of the gap between the reads. Default is 50.
  type: string
  inputBinding:
    prefix: --gap
- id: length
  doc: Length of the reads. Default is 100.
  type: long
  inputBinding:
    prefix: --length
- id: snp
  doc: Percentage of SNPs to be generated. If set to 1 then it will generate a SNP
    every 100 nucleotides. If set to 0 then no SNPs are generated. Default is 0.
  type: string
  inputBinding:
    prefix: --snp
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2reads.py
