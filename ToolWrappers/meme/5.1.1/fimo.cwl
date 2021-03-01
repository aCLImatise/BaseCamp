class: CommandLineTool
id: fimo.cwl
inputs:
- id: in_alpha
  doc: (default 1.0)
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_b_file
  doc: (DNA and protein use NRDB by default)
  type: File?
  inputBinding:
    prefix: --bfile
- id: in_max_stored_scores
  doc: (default=100000)
  type: long?
  inputBinding:
    prefix: --max-stored-scores
- id: in_max_strand
  doc: (default=all)
  type: long?
  inputBinding:
    prefix: --max-strand
- id: in_motif_pseudo
  doc: (default=0.1)
  type: double?
  inputBinding:
    prefix: --motif-pseudo
- id: in_no_q_value
  doc: (default=fimo_out)
  type: string?
  inputBinding:
    prefix: --no-qvalue
- id: in_oc
  doc: (default=fimo_out)
  type: string?
  inputBinding:
    prefix: --oc
- id: in_parse_genomic_coord
  doc: (default none)
  type: File?
  inputBinding:
    prefix: --parse-genomic-coord
- id: in_prior_dist
  doc: (default none)
  type: File?
  inputBinding:
    prefix: --prior-dist
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
hints: []
cwlVersion: v1.1
baseCommand:
- fimo
