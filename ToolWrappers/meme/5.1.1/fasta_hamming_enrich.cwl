class: CommandLineTool
id: fasta_hamming_enrich.cwl
inputs:
- id: in_word_required
  doc: word (required)
  type: string?
  inputBinding:
    prefix: -w
- id: in_positive_sequences_fasta
  doc: positive sequences FASTA file name (required)
  type: File?
  inputBinding:
    prefix: -p
- id: in_negative_sequences_fasta
  doc: negative sequences FASTA file name (required)
  type: File?
  inputBinding:
    prefix: -n
- id: in_alphabet_definition_file
  doc: alphabet definition file
  type: File?
  inputBinding:
    prefix: -a
- id: in_refine_consensus_branching
  doc: "refine consensus by branching search\n(distance 1 steps; beam size = 1)."
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta-hamming-enrich
