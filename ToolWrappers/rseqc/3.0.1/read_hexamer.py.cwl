class: CommandLineTool
id: read_hexamer.py.cwl
inputs:
- id: in_input
  doc: "Read sequence in fasta or fastq format. Multiple\nfasta/fastq files should\
    \ be separated by ','. For\nexample: read.fq,read2.fa,read3,fa"
  type: long?
  inputBinding:
    prefix: --input
- id: in_ref_genome
  doc: Reference genome sequence in fasta format. Optional
  type: string?
  inputBinding:
    prefix: --refgenome
- id: in_ref_gene
  doc: "Reference mRNA sequence in fasta format. Optional\n"
  type: string?
  inputBinding:
    prefix: --refgene
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- read_hexamer.py
