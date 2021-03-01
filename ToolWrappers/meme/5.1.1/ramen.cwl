class: CommandLineTool
id: ramen.cwl
inputs:
- id: in_log_f_scores
  doc: "[on|off] Regression on the log_e of the fluorescence scores\non: (Default)\
    \ Use the log_e(fluorescence) in the regression.\noff: Use the score directly\
    \ provided in the sequence file."
  type: boolean?
  inputBinding:
    prefix: --log-fscores
- id: in_log_pwm_scores
  doc: "[on|off] Regression on the log_e of the PWM scores\non: Use the log_e(RMA\
    \ or AMA Score) in the regression.\noff: (Default) Use the RMA/AMA score directly."
  type: boolean?
  inputBinding:
    prefix: --log-pwmscores
- id: in_normalise_motifs
  doc: "[on|off] Normalise the motif scores so that the motifs are comparable\non:\
    \ (Default) Normalise motifs for comparison (Use RMA score).\noff: Use raw AMA\
    \ score (Not recommended)."
  type: boolean?
  inputBinding:
    prefix: --normalise-motifs
- id: in_lin_reg_switch_xy
  doc: "[on|on] Switch the x and y axis for the linear regression\non: y-points are\
    \ PWM scores, x-values are fluorescence scores.\noff: (Default) y-points are fluorescence\
    \ scores, x-points are PWM scores."
  type: boolean?
  inputBinding:
    prefix: --linreg-switchxy
- id: in_lin_reg_dump_dir
  doc: Dump (R-format) TSV files of each regression.
  type: Directory?
  inputBinding:
    prefix: --linreg-dumpdir
- id: in_repeats
  doc: (default=10,000) Number of times to sample for p-value determination.
  type: long?
  inputBinding:
    prefix: --repeats
- id: in_p_value_cut_off
  doc: (default=0.05) Only show results with p-value <= this cutoff
  type: double?
  inputBinding:
    prefix: --pvalue-cutoff
- id: in_bg_format
  doc: "[0|2|3] source used to determine background frequencies\n0: uniform background\n\
    1: MEME motif file\n2: Background file"
  type: boolean?
  inputBinding:
    prefix: --bgformat
- id: in_bg_file
  doc: file containing background frequencies
  type: File?
  inputBinding:
    prefix: --bgfile
- id: in_motif_format
  doc: '[meme|tamo|regexp] format of input motif file (default meme)'
  type: boolean?
  inputBinding:
    prefix: --motif-format
- id: in_pseudo_count
  doc: <float, default = 0.25> Pseudocount for motif affinity scan
  type: boolean?
  inputBinding:
    prefix: --pseudocount
- id: in_verbose
  doc: <1...5>                 Integer describing verbosity. Best used as first argument
    in list.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_motif_file
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
- ramen
