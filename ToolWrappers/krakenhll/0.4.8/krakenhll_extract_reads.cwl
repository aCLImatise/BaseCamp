class: CommandLineTool
id: krakenhll_extract_reads.cwl
inputs:
- id: in_input_fasta_file
  doc: 'input is FASTA file (default: FASTQ)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_output_fasta_format
  doc: output in FASTA format
  type: boolean
  inputBinding:
    prefix: -f
- id: in_invert_print_reads
  doc: 'invert: print all reads not matching taxon'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_include_children_taxonomy
  doc: Include children of taxonomy IDs, using TAXDB to find them
  type: string
  inputBinding:
    prefix: -t
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_pairedend_reads_use
  doc: "paired-end reads: use a '%' in fasta/q file name as placeholder for 1 and\
    \ 2"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: in_tax_on
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_kraken
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- krakenhll-extract-reads
