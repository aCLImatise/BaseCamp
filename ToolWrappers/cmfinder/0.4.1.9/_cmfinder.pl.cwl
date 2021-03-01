class: CommandLineTool
id: _cmfinder.pl.cwl
inputs:
- id: in_use_blast_search
  doc: Do not use BLAST search to locate anchors
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_maximum_number_default
  doc: The maximum number of candidates in each sequence. Default 40. No bigger than
    100.
  type: long?
  inputBinding:
    prefix: -c
- id: in_minimum_length_default
  doc: The minimum length of candidates. Default 30
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_length_default
  doc: The maximum length of candidates. Default 100
  type: long?
  inputBinding:
    prefix: -M
- id: in_fraction_sequences_expected
  doc: The fraction of the sequences expected to contain the motif. Default 0.80
  type: long?
  inputBinding:
    prefix: -f
- id: in_s_one
  doc: The max number of output single stem-loop motifs
  type: long?
  inputBinding:
    prefix: -s1
- id: in_s_two
  doc: The max number of output double stem-loop motifs
  type: long?
  inputBinding:
    prefix: -s2
- id: in_combine
  doc: Combine the output motifs. Default False
  type: boolean?
  inputBinding:
    prefix: -combine
- id: in_hmm
  doc: Apply HMM filter for speed up. Default false.
  type: boolean?
  inputBinding:
    prefix: -hmm
- id: in_anchor
  doc: '[FASTA|BLAST|NONE]      Methods to compute the anchors'
  type: boolean?
  inputBinding:
    prefix: -anchor
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _cmfinder.pl
