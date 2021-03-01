class: CommandLineTool
id: sampling_utils_rand_seq.cwl
inputs:
- id: in_num_seqs
  doc: "Number of sequences to generate  [default:\n1000]"
  type: long?
  inputBinding:
    prefix: --num-seqs
- id: in_gc_content
  doc: "GC content (defaults to .5 out of 1)  [default:\n0.5]"
  type: double?
  inputBinding:
    prefix: --gc-content
- id: in_infer_params
  doc: "Infer parameters GC content and Quality model\nfrom file"
  type: File?
  inputBinding:
    prefix: --infer-params
- id: in_coding_prop
  doc: 'Proportion of coding sequences  [default: 0.0]'
  type: double?
  inputBinding:
    prefix: --coding-prop
- id: in_length
  doc: 'Sequence length  [default: 150]'
  type: long?
  inputBinding:
    prefix: --length
- id: in_const_model
  doc: Use a model with constant qualities + noise
  type: boolean?
  inputBinding:
    prefix: --const-model
- id: in_dist_loc
  doc: "Use as the starting point quality  [default:\n30.0]"
  type: double?
  inputBinding:
    prefix: --dist-loc
- id: in_fast_q
  doc: The output file is a FastQ file
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_save_model
  doc: Save inferred qualities model to a pickle file
  type: File?
  inputBinding:
    prefix: --save-model
- id: in_read_model
  doc: Load qualities model from a pickle file
  type: File?
  inputBinding:
    prefix: --read-model
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_q
  doc: The output file is a FastQ file
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_q)
hints: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- rand_seq
