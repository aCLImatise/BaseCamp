class: CommandLineTool
id: bealign.cwl
inputs:
- id: input
  doc: INPUT FASTA file
  type: string
  inputBinding:
    position: 0
- id: output
  doc: send BAM to OUTPUT
  type: string
  inputBinding:
    position: 1
- id: reference
  doc: REFERENCE FASTA file or {HXB2_env, HXB2_gag, HXB2_int, HXB2_nef, HXB2_pol,
    HXB2_pr, HXB2_prrt, HXB2_rev, HXB2_rt, HXB2_tat, HXB2_vif, HXB2_vpr, HXB2_vpu,
    NL4-3_prrt}
  type: string
  inputBinding:
    prefix: --reference
- id: expected_identity
  doc: discard sequences that are insufficiently identical to the reference
  type: string
  inputBinding:
    prefix: --expected-identity
- id: alphabet
  doc: perform an alignment using one of {amino, dna, codon} [default=codon]
  type: string
  inputBinding:
    prefix: --alphabet
- id: score_matrix
  doc: parameterize using one of {BLOSUM62, DNA65, DNA70, DNA80, DNA88, DNA95, HIV_BETWEEN_F,
    PAM200, PAM250} [default=BLOSUM62]
  type: string
  inputBinding:
    prefix: --score-matrix
- id: discard
  doc: discarded sequences are sent to DISCARD
  type: string
  inputBinding:
    prefix: --discard
- id: reverse_complement
  doc: also align the reverse complement of each query sequence, returning it if the
    alignment is superior
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: no_sort
  doc: do NOT sort the resulting BAM file [the default is to sort]
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: quiet
  doc: do not print status update messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: keep_reference
  doc: include the reference sequence as the first one in the resulting BAM file [the
    default is to strip it]
  type: boolean
  inputBinding:
    prefix: --keep-reference
outputs: []
cwlVersion: v1.1
baseCommand:
- bealign
