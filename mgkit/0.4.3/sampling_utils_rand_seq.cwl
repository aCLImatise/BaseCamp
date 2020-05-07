class: CommandLineTool
id: sampling_utils_rand_seq.cwl
inputs:
- id: num_seqs
  doc: 'Number of sequences to generate  [default: 1000]'
  type: long
  inputBinding:
    prefix: --num-seqs
- id: gc_content
  doc: 'GC content (defaults to .5 out of 1)  [default: 0.5]'
  type: double
  inputBinding:
    prefix: --gc-content
- id: infer_params
  doc: Infer parameters GC content and Quality model from file
  type: File
  inputBinding:
    prefix: --infer-params
- id: coding_prop
  doc: 'Proportion of coding sequences  [default: 0.0]'
  type: double
  inputBinding:
    prefix: --coding-prop
- id: length
  doc: 'Sequence length  [default: 150]'
  type: long
  inputBinding:
    prefix: --length
- id: const_model
  doc: Use a model with constant qualities + noise
  type: boolean
  inputBinding:
    prefix: --const-model
- id: dist_loc
  doc: 'Use as the starting point quality  [default: 30.0]'
  type: double
  inputBinding:
    prefix: --dist-loc
- id: fast_q
  doc: The output file is a FastQ file
  type: boolean
  inputBinding:
    prefix: --fastq
- id: save_model
  doc: Save inferred qualities model to a pickle file
  type: File
  inputBinding:
    prefix: --save-model
- id: read_model
  doc: Load qualities model from a pickle file
  type: File
  inputBinding:
    prefix: --read-model
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- rand_seq
