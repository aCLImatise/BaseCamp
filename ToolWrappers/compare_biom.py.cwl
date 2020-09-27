class: CommandLineTool
id: compare_biom.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_compare_observations
  doc: "Calculate accuracy values by comparing between\nobservations (instead of between\
    \ samples) [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --compare_observations
- id: in_normalize
  doc: "Convert both expected and observed tables to relative\nabundances (instead\
    \ of observations) [default: False]"
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_limit_to_expected_observations
  doc: "Ignore observations that are not in the expected\ntable[default: False]"
  type: boolean
  inputBinding:
    prefix: --limit_to_expected_observations
- id: in_limit_to_observed_observations
  doc: "Ignore observations that are not in the observed\ntable[default: False]"
  type: boolean
  inputBinding:
    prefix: --limit_to_observed_observations
- id: in_shuffle_samples
  doc: "Shuffle samples ids randomly before measuring\naccuracy[default: False]"
  type: boolean
  inputBinding:
    prefix: --shuffle_samples
- id: in_not_relative_abundance_scores
  doc: "Round numbers (instead of taking ceil() which is used\nfor RA) before calculating\
    \ TP,FP,FN,TN [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --not_relative_abundance_scores
- id: in_exp_trait_table_fp
  doc: the expected trait table (biom format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --exp_trait_table_fp
- id: in_output_fp
  doc: "the output file [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "the output file [REQUIRED]\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- compare_biom.py
