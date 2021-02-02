class: CommandLineTool
id: run_genome_evaluations.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: 'the output directory [default: <input_dir>]'
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_parallel_method
  doc: "Method for parallelization. Valid choices are: sge,\ntorque, multithreaded\
    \ [default: multithreaded]"
  type: string
  inputBinding:
    prefix: --parallel_method
- id: in_prediction_method
  doc: "Method for trait prediction.  See predict_traits.py\nfor full documentation.\
    \ Valid choices are:\nasr_and_weighting, nearest_neighbor, random_neighbor\n[default:\
    \ asr_and_weighting]"
  type: string
  inputBinding:
    prefix: --prediction_method
- id: in_with_confidence
  doc: "If set, calculate confidence intervals with ace_ml or\nace_reml, and use confidence\
    \ intervals in trait\nprediction"
  type: boolean
  inputBinding:
    prefix: --with_confidence
- id: in_with_accuracy
  doc: "If set, calculate accuracy using the NSTI (nearest\nsequenced taxon index)\
    \ during trait prediction"
  type: boolean
  inputBinding:
    prefix: --with_accuracy
- id: in_asr_method
  doc: "Method for ancestral_state_reconstruction.  See\nancestral_state_reconstruction.py\
    \ for full\ndocumentation. Valid choices are: ace_ml, ace_reml,\nace_pic, wagner\
    \ [default: wagner]"
  type: string
  inputBinding:
    prefix: --asr_method
- id: in_weighting_method
  doc: "Method for weighting during trait prediction.  See\npredict_traits.py for\
    \ full documentation. Valid\nchoices are: linear, exponential, equal [default:\n\
    exponential]"
  type: string
  inputBinding:
    prefix: --weighting_method
- id: in_num_jobs
  doc: 'Number of jobs to be submitted. [default: 100]'
  type: long
  inputBinding:
    prefix: --num_jobs
- id: in_tmp_dir
  doc: "location to store intermediate files [default:\n<output_dir>]"
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: in_force
  doc: "run all jobs even if output files exist [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_check_for_null_files
  doc: "check if pre-existing output files have null files. If\nso remove them and\
    \ re-run. [default: False]"
  type: boolean
  inputBinding:
    prefix: --check_for_null_files
- id: in_input_dir
  doc: "directory containing one or more test datasets\n[REQUIRED]"
  type: Directory
  inputBinding:
    prefix: --input_dir
- id: in_ref_tree
  doc: "reference tree that was used with make_test_datasets\n[REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --ref_tree
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_genome_evaluations.py
