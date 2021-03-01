class: CommandLineTool
id: ssw_test.cwl
inputs:
- id: in_n_positive_integer_weight
  doc: 'N is a positive integer for weight match in genome sequence alignment. [default:
    2]'
  type: long?
  inputBinding:
    prefix: -m
- id: in_n_positive_weight
  doc: 'N is a positive integer. -N will be used as weight mismatch in genome sequence
    alignment. [default: 2]'
  type: long?
  inputBinding:
    prefix: -x
- id: in_n_the_opening
  doc: 'N is a positive integer. -N will be used as the weight for the gap opening.
    [default: 3]'
  type: long?
  inputBinding:
    prefix: -o
- id: in_the_gap_extension
  doc: 'N is a positive integer. -N will be used as the weight for the gap extension.
    [default: 1]'
  type: long?
  inputBinding:
    prefix: -e
- id: in_do_sequence_alignment
  doc: Do protein sequence alignment. Without this option, the ssw_test will do genome
    sequence alignment.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_file_blosum_pam
  doc: 'FILE is either the Blosum or Pam weight matrix. [default: Blosum50]'
  type: File?
  inputBinding:
    prefix: -a
- id: in_return_alignment_path
  doc: Return the alignment path.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_n_positive_integer_only
  doc: N is a positive integer. Only output the alignments with the Smith-Waterman
    score >= N.
  type: long?
  inputBinding:
    prefix: -f
- id: in_best_alignment_picked
  doc: The best alignment will be picked between the original read alignment and the
    reverse complement read alignment.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_output_sam_format
  doc: 'Output in SAM format. [default: no header]'
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ssw_test
