class: CommandLineTool
id: singlem_seqs.cwl
inputs:
- id: debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: alignment
  doc: Protein sequences hmmaligned and converted to fasta format with seqmagick
  type: string
  inputBinding:
    prefix: --alignment
- id: alignment_type
  doc: alignment is 'aa' or 'dna'
  type: string
  inputBinding:
    prefix: --alignment_type
- id: window_size
  doc: Number of nucleotides to use in continuous window
  type: long
  inputBinding:
    prefix: --window_size
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- seqs
