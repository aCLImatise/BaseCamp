class: CommandLineTool
id: ../../../peakachu_window.cwl
inputs:
- id: in_exp_libs
  doc: ''
  type: string[]
  inputBinding:
    prefix: --exp_libs
- id: in_ctr_libs
  doc: ''
  type: string[]
  inputBinding:
    prefix: --ctr_libs
- id: in_pairwise_replicates
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pairwise_replicates
- id: in_paired_end
  doc: ''
  type: boolean
  inputBinding:
    prefix: --paired_end
- id: in_max_insert_size
  doc: ''
  type: long
  inputBinding:
    prefix: --max_insert_size
- id: in_gff_folder
  doc: ''
  type: Directory
  inputBinding:
    prefix: --gff_folder
- id: in_features
  doc: '[FEATURES [FEATURES ...]]'
  type: boolean
  inputBinding:
    prefix: --features
- id: in_sub_features
  doc: '[SUB_FEATURES [SUB_FEATURES ...]]'
  type: boolean
  inputBinding:
    prefix: --sub_features
- id: in_max_proc
  doc: ''
  type: long
  inputBinding:
    prefix: --max_proc
- id: in_window_size
  doc: ''
  type: long
  inputBinding:
    prefix: --window_size
- id: in_step_size
  doc: ''
  type: long
  inputBinding:
    prefix: --step_size
- id: in_stat_test
  doc: ''
  type: string
  inputBinding:
    prefix: --stat_test
- id: in_norm_method
  doc: ''
  type: string
  inputBinding:
    prefix: --norm_method
- id: in_normalization_factors_libraries
  doc: "[SIZE_FACTORS [SIZE_FACTORS ...]], --size_factors [SIZE_FACTORS [SIZE_FACTORS\
    \ ...]]\nNormalization factors for libraries in input order\n(first experiment\
    \ then control libraries)"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_mad_multiplier
  doc: ''
  type: string
  inputBinding:
    prefix: --mad_multiplier
- id: in_fc_cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --fc_cutoff
- id: in_het_p_val_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --het_p_val_threshold
- id: in_rep_pair_p_val_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --rep_pair_p_val_threshold
- id: in_pad_j_threshold
  doc: ''
  type: string
  inputBinding:
    prefix: --padj_threshold
- id: in_output_folder
  doc: ''
  type: Directory
  inputBinding:
    prefix: --output_folder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- peakachu
- window
