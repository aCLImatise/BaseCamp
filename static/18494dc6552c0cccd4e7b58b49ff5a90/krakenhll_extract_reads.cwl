class: CommandLineTool
id: krakenhll_extract_reads.cwl
inputs:
- id: a
  doc: 'input is FASTA file (default: FASTQ)'
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: output in FASTA format
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: 'invert: print all reads not matching taxon'
  type: boolean
  inputBinding:
    prefix: -i
- id: t
  doc: Include children of taxonomy IDs, using TAXDB to find them
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: p
  doc: "paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and\
    \ 2"
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenhll-extract-reads
