class: CommandLineTool
id: motiph.cwl
inputs:
- id: in_bg
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --bg
- id: in_column_freqs
  doc: '|empirical (default=simulated)'
  type: string?
  inputBinding:
    prefix: --column-freqs
- id: in_fg
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --fg
- id: in_gap
  doc: '| fixed | wildcard | minimum (default=skip)'
  type: string?
  inputBinding:
    prefix: --gap
- id: in_gap_cost
  doc: (default=0.0)
  type: double?
  inputBinding:
    prefix: --gap-cost
- id: in_hb
  doc: (defalut false)
  type: boolean?
  inputBinding:
    prefix: --hb
- id: in_model
  doc: '|single|average|jc|k2|f81|f84|hky|tn (default=f81)'
  type: long?
  inputBinding:
    prefix: --model
- id: in_pur_pyr
  doc: (default=1.0)
  type: double?
  inputBinding:
    prefix: --pur-pyr
- id: in_transition_transversion
  doc: (default=0.5)
  type: double?
  inputBinding:
    prefix: --transition-transversion
- id: in_ustar
  doc: (default=all)
  type: string?
  inputBinding:
    prefix: --ustar
- id: in_b_file
  doc: (default from motif file)
  type: File?
  inputBinding:
    prefix: --bfile
- id: in_no_q_value
  doc: (default false)
  type: boolean?
  inputBinding:
    prefix: --no-qvalue
- id: in_norc
  doc: (default false)
  type: boolean?
  inputBinding:
    prefix: --norc
- id: in_flip
  doc: '|false (Allow BLS matches in reverse. Default: true)'
  type: string?
  inputBinding:
    prefix: --flip
- id: in_bls_dist
  doc: (Distance threshold for BLS. Default:20)
  type: long?
  inputBinding:
    prefix: --bls-dist
- id: in_max_stored_scores
  doc: (Default 100,000)
  type: boolean?
  inputBinding:
    prefix: --max-stored-scores
- id: in_print_trimmed_tree
  doc: (default=0.1)
  type: double?
  inputBinding:
    prefix: --print-trimmed-tree
- id: in_output_p_thresh
  doc: (default 1e-4)
  type: double?
  inputBinding:
    prefix: --output-pthresh
- id: in_output_q_thresh
  doc: (default 1.0)
  type: double?
  inputBinding:
    prefix: --output-qthresh
- id: in_seed
  doc: (default from time())
  type: string?
  inputBinding:
    prefix: --seed
- id: in_text
  doc: (default false)
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_motif
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- motiph
