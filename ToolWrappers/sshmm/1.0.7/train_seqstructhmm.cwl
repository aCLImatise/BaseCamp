class: CommandLineTool
id: train_seqstructhmm.cwl
inputs:
- id: in_motif_length
  doc: 'length of the motif that shall be found (default: 6)'
  type: long?
  inputBinding:
    prefix: --motif_length
- id: in_random
  doc: "Initialize the model randomly (default: initialize\nwith Baum-Welch optimized\
    \ sequence motif)"
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_flexibility
  doc: "greedyness of Gibbs sampler: model parameters are\nsampled from among the\
    \ top f configurations (default:\nf=10), set f to 0 in order to include all possible\n\
    configurations"
  type: long?
  inputBinding:
    prefix: --flexibility
- id: in_block_size
  doc: "number of sequences to be held-out in each iteration\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --block_size
- id: in_threshold
  doc: "the iterative algorithm is terminated if this\nreduction in sequence structure\
    \ loglikelihood is not\nreached for any of the 3 last measurements (default:\n\
    10)"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_job_name
  doc: 'name of the job (default: "job")'
  type: string?
  inputBinding:
    prefix: --job_name
- id: in_output_directory
  doc: "directory to write output files to (default: current\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_termination_interval
  doc: 'produce output every <i> iterations (default: i=100)'
  type: long?
  inputBinding:
    prefix: --termination_interval
- id: in_no_model_state
  doc: do not write model state every i iterations
  type: boolean?
  inputBinding:
    prefix: --no_model_state
- id: in_only_best_shape
  doc: "train only using best structure for each sequence\n(default: use all structures)\n"
  type: boolean?
  inputBinding:
    prefix: --only_best_shape
- id: in_training_sequences
  doc: FASTA file with sequences for training
  type: string
  inputBinding:
    position: 0
- id: in_training_structures
  doc: FASTA file with RNA structures for training
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "directory to write output files to (default: current\ndirectory)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- train_seqstructhmm
