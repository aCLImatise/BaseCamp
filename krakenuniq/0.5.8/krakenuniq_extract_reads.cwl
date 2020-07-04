class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/krakenuniq_extract_reads.cwl
inputs:
- id: input_fasta_file
  doc: 'input is FASTA file (default: FASTQ)'
  type: boolean
  inputBinding:
    prefix: -a
- id: output_fasta_format
  doc: output in FASTA format
  type: boolean
  inputBinding:
    prefix: -f
- id: invert_print_reads
  doc: 'invert: print all reads not matching taxon'
  type: boolean
  inputBinding:
    prefix: -i
- id: include_children_using
  doc: Include children of taxonomy IDs, using TAXDB to find them
  type: string
  inputBinding:
    prefix: -t
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: pairedend_reads_use
  doc: "paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and\
    \ 2"
  type: boolean
  inputBinding:
    prefix: -p
- id: tax_on
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: kraken
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- krakenuniq-extract-reads
