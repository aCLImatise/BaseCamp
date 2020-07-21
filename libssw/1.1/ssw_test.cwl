class: CommandLineTool
id: ../../../ssw_test.cwl
inputs:
- id: n_positive_integer_weight
  doc: 'N is a positive integer for weight match in genome sequence alignment. [default:
    2]'
  type: string
  inputBinding:
    prefix: -m
- id: n_positive_weight
  doc: 'N is a positive integer. -N will be used as weight mismatch in genome sequence
    alignment. [default: 2]'
  type: string
  inputBinding:
    prefix: -x
- id: the_gap_opening
  doc: 'N is a positive integer. -N will be used as the weight for the gap opening.
    [default: 3]'
  type: string
  inputBinding:
    prefix: -o
- id: the_gap_extension
  doc: 'N is a positive integer. -N will be used as the weight for the gap extension.
    [default: 1]'
  type: string
  inputBinding:
    prefix: -e
- id: protein_sequence_alignment
  doc: Do protein sequence alignment. Without this option, the ssw_test will do genome
    sequence alignment.
  type: boolean
  inputBinding:
    prefix: -p
- id: file_blosum_matrix
  doc: 'FILE is either the Blosum or Pam weight matrix. [default: Blosum50]'
  type: File
  inputBinding:
    prefix: -a
- id: return_alignment_path
  doc: Return the alignment path.
  type: boolean
  inputBinding:
    prefix: -c
- id: n_positive_integer_only
  doc: N is a positive integer. Only output the alignments with the Smith-Waterman
    score >= N.
  type: string
  inputBinding:
    prefix: -f
- id: best_alignment_will
  doc: The best alignment will be picked between the original read alignment and the
    reverse complement read alignment.
  type: boolean
  inputBinding:
    prefix: -r
- id: output_sam_format
  doc: 'Output in SAM format. [default: no header]'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- ssw_test
