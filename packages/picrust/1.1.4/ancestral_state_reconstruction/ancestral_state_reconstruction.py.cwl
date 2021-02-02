class: CommandLineTool
id: ancestral_state_reconstruction.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_asr_method
  doc: "Method for ancestral state reconstruction. Valid\nchoices are: ace_ml, ace_reml,\
    \ ace_pic, wagner\n[default: ace_pic]"
  type: string
  inputBinding:
    prefix: --asr_method
- id: in_output_fp
  doc: output trait table [default:asr_counts.tab]
  type: string
  inputBinding:
    prefix: --output_fp
- id: in_output_ci_fp
  doc: "output table containing 95% confidence intervals,\nloglik, and brownian motion\
    \ parameters for each asr\nprediction [default:asr_ci.tab]"
  type: long
  inputBinding:
    prefix: --output_ci_fp
- id: in_parallel
  doc: allow parallelization of asr
  type: boolean
  inputBinding:
    prefix: --parallel
- id: in_parallel_method
  doc: "Method for parallelization. Valid choices are: sge,\ntorque, multithreaded\
    \ [default: sge]"
  type: string
  inputBinding:
    prefix: --parallel_method
- id: in_num_jobs
  doc: "Number of jobs to be submitted (if --parallel).\n[default: 100]"
  type: long
  inputBinding:
    prefix: --num_jobs
- id: in_debug
  doc: "To aid with debugging; get the command that the app\ncontroller is going to\
    \ run"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_input_tree_fp
  doc: the tree to use for ASR [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree_fp
- id: in_input_trait_table_fp
  doc: "the trait table to use for ASR [REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --input_trait_table_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ancestral_state_reconstruction.py
