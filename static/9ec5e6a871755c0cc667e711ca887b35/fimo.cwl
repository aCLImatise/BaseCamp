class: CommandLineTool
id: ../../../fimo.cwl
inputs:
- id: in_alpha
  doc: (default 1.0)
  type: double
  inputBinding:
    prefix: --alpha
- id: in_b_file
  doc: (DNA and protein use NRDB by default)
  type: File
  inputBinding:
    prefix: --bfile
- id: in_max_stored_scores
  doc: (default=100000)
  type: long
  inputBinding:
    prefix: --max-stored-scores
- id: in_max_strand
  doc: ''
  type: boolean
  inputBinding:
    prefix: --max-strand
- id: in_motif
  doc: (default=all)
  type: string
  inputBinding:
    prefix: --motif
- id: in_motif_pseudo
  doc: (default=0.1)
  type: double
  inputBinding:
    prefix: --motif-pseudo
- id: in_no_q_value
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-qvalue
- id: in_norc
  doc: ''
  type: boolean
  inputBinding:
    prefix: --norc
- id: in_o
  doc: (default=fimo_out)
  type: string
  inputBinding:
    prefix: --o
- id: in_oc
  doc: (default=fimo_out)
  type: string
  inputBinding:
    prefix: --oc
- id: in_parse_genomic_coord
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parse-genomic-coord
- id: in_psp
  doc: (default none)
  type: File
  inputBinding:
    prefix: --psp
- id: in_prior_dist
  doc: (default none)
  type: File
  inputBinding:
    prefix: --prior-dist
- id: in_qv_thresh
  doc: ''
  type: boolean
  inputBinding:
    prefix: --qv-thresh
- id: in_skip_matched_sequence
  doc: ''
  type: boolean
  inputBinding:
    prefix: --skip-matched-sequence
- id: in_text
  doc: ''
  type: boolean
  inputBinding:
    prefix: --text
- id: in_thresh
  doc: (default = 1e-4)
  type: double
  inputBinding:
    prefix: --thresh
- id: in_verbosity
  doc: '[1|2|3|4] (default 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_motif_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fimo
