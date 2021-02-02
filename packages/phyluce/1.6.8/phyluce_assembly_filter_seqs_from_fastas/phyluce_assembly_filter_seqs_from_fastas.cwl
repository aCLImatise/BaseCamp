class: CommandLineTool
id: phyluce_assembly_filter_seqs_from_fastas.cwl
inputs:
- id: in_input
  doc: The directory containing the FASTA sequences to
  type: Directory
  inputBinding:
    prefix: --input
- id: in_count
  doc: Number of sequences per locus that will serve as cut
  type: long
  inputBinding:
    prefix: --count
- id: in_var_2
  doc: ''
  type: boolean
  inputBinding:
    prefix: --output
- id: in__filteredsequencesfile
  doc: --filtered-sequences-file
  type: string
  inputBinding:
    position: 0
- id: in_short_sequences_file
  doc: '[--cores CORES]'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_filter_seqs_from_fastas
