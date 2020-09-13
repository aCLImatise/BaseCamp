class: CommandLineTool
id: ../../../coverm_genome.cwl
inputs:
- id: in_coupled
  doc: '...'
  type: string
  inputBinding:
    prefix: --coupled
- id: in_genome_definition
  doc: ''
  type: string
  inputBinding:
    prefix: --genome-definition
- id: in_genome_fast_a_directory
  doc: ''
  type: Directory
  inputBinding:
    prefix: --genome-fasta-directory
- id: in_genome_fast_a_files
  doc: '...'
  type: string
  inputBinding:
    prefix: --genome-fasta-files
- id: in_interleaved
  doc: '...'
  type: string
  inputBinding:
    prefix: --interleaved
- id: in_one
  doc: '...'
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '...'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_separator
  doc: ''
  type: string
  inputBinding:
    prefix: --separator
- id: in_single
  doc: '...'
  type: string
  inputBinding:
    prefix: --single
- id: in_contig_end_exclusion
  doc: ''
  type: string
  inputBinding:
    prefix: --contig-end-exclusion
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coverm
- genome
