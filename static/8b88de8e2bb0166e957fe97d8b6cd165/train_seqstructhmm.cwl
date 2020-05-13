class: CommandLineTool
id: train_seqstructhmm.cwl
inputs:
- id: training_sequences
  doc: FASTA file with sequences for training
  type: string
  inputBinding:
    position: 0
- id: training_structures
  doc: FASTA file with RNA structures for training
  type: string
  inputBinding:
    position: 1
- id: motif_length
  doc: 'length of the motif that shall be found (default: 6)'
  type: string
  inputBinding:
    prefix: --motif_length
- id: random
  doc: 'Initialize the model randomly (default: initialize with Baum-Welch optimized
    sequence motif)'
  type: boolean
  inputBinding:
    prefix: --random
- id: flexibility
  doc: 'greedyness of Gibbs sampler: model parameters are sampled from among the top
    f configurations (default: f=10), set f to 0 in order to include all possible
    configurations'
  type: string
  inputBinding:
    prefix: --flexibility
- id: block_size
  doc: 'number of sequences to be held-out in each iteration (default: 1)'
  type: string
  inputBinding:
    prefix: --block_size
- id: threshold
  doc: 'the iterative algorithm is terminated if this reduction in sequence structure
    loglikelihood is not reached for any of the 3 last measurements (default: 10)'
  type: string
  inputBinding:
    prefix: --threshold
- id: job_name
  doc: 'name of the job (default: "job")'
  type: string
  inputBinding:
    prefix: --job_name
- id: output_directory
  doc: 'directory to write output files to (default: current directory)'
  type: string
  inputBinding:
    prefix: --output_directory
- id: termination_interval
  doc: 'produce output every <i> iterations (default: i=100)'
  type: string
  inputBinding:
    prefix: --termination_interval
- id: no_model_state
  doc: do not write model state every i iterations
  type: boolean
  inputBinding:
    prefix: --no_model_state
- id: only_best_shape
  doc: 'train only using best structure for each sequence (default: use all structures)'
  type: boolean
  inputBinding:
    prefix: --only_best_shape
outputs: []
cwlVersion: v1.1
baseCommand:
- train_seqstructhmm
