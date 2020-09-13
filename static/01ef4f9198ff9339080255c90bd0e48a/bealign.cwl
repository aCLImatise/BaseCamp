class: CommandLineTool
id: ../../../bealign.cwl
inputs:
- id: in_reference
  doc: "REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int,\nHXB2_nef, HXB2_pol,\
    \ HXB2_pr, HXB2_prrt, HXB2_rev,\nHXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu,\n\
    NL4-3_prrt}"
  type: File
  inputBinding:
    prefix: --reference
- id: in_expected_identity
  doc: "discard sequences that are insufficiently identical to\nthe reference"
  type: string
  inputBinding:
    prefix: --expected-identity
- id: in_alphabet
  doc: "perform an alignment using one of {amino, dna, codon}\n[default=codon]"
  type: string
  inputBinding:
    prefix: --alphabet
- id: in_score_matrix
  doc: "parameterize using one of {BLOSUM62, DNA65, DNA70,\nDNA80, DNA88, DNA95, HIV_BETWEEN_F,\
    \ PAM200, PAM250}\n[default=BLOSUM62]"
  type: long
  inputBinding:
    prefix: --score-matrix
- id: in_discard
  doc: discarded sequences are sent to DISCARD
  type: string
  inputBinding:
    prefix: --discard
- id: in_reverse_complement
  doc: "also align the reverse complement of each query\nsequence, returning it if\
    \ the alignment is superior"
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: in_no_sort
  doc: "do NOT sort the resulting BAM file [the default is to\nsort]"
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: in_quiet
  doc: do not print status update messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_keep_reference
  doc: "include the reference sequence as the first one in the\nresulting BAM file\
    \ [the default is to strip it]\n"
  type: boolean
  inputBinding:
    prefix: --keep-reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bealign
