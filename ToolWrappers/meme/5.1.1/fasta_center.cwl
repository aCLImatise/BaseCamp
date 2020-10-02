class: CommandLineTool
id: fasta_center.cwl
inputs:
- id: in_dna
  doc: the sequences use the DNA alphabet
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_protein
  doc: the sequences use the protein alphabet
  type: boolean
  inputBinding:
    prefix: -protein
- id: in_rna
  doc: the sequences use the RNA alphabet
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_alph
  doc: file with the alphabet definition
  type: File
  inputBinding:
    prefix: -alph
- id: in_len
  doc: 'length of sequences to output; default: 100'
  type: long
  inputBinding:
    prefix: -len
- id: in_flank
  doc: output flanking sequences to <file>
  type: File
  inputBinding:
    prefix: -flank
- id: in_reject
  doc: output rejected sequences to <file>
  type: File
  inputBinding:
    prefix: -reject
- id: in_sequence_dot
  doc: When an alphabet is specified the sequences are validated and
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_flank
  doc: output flanking sequences to <file>
  type: File
  outputBinding:
    glob: $(inputs.in_flank)
- id: out_reject
  doc: output rejected sequences to <file>
  type: File
  outputBinding:
    glob: $(inputs.in_reject)
cwlVersion: v1.1
baseCommand:
- fasta-center
