class: CommandLineTool
id: train_network.py_events.cwl
inputs:
- id: in_adam
  doc: "decay1 decay2\nParameters for Exponential Decay Adaptive Momementum\n(default:\
    \ Values(rate=0.001, decay1=0.9,\ndecay2=0.999))"
  type: double?
  inputBinding:
    prefix: --adam
- id: in_no_bad
  doc: 'Force blocks marked as bad to be stays (Default:'
  type: boolean?
  inputBinding:
    prefix: --no-bad
- id: in_batch_size
  doc: 'Number of chunks to run in parallel (default: 100)'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_chunk_len_range
  doc: "max\nRandomly sample chunk sizes between min and max\n(fraction of chunk size\
    \ in input file) (default: (0.5,\n1.0))"
  type: long?
  inputBinding:
    prefix: --chunk_len_range
- id: in_no_ilf
  doc: "Weight objective function by Inverse Label Frequency\n(Default: --no-ilf)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-ilf
- id: in_l_two
  doc: 'L2 penalty on parameters (default: 0.0)'
  type: long?
  inputBinding:
    prefix: --l2
- id: in_lr_decay
  doc: "Learning rate for batch i is adam.rate / (1.0 + i / n)\n(default: 5000)"
  type: double?
  inputBinding:
    prefix: --lrdecay
- id: in_min_prob
  doc: "Minimum probability allowed for training (default:\n1e-30)"
  type: double?
  inputBinding:
    prefix: --min_prob
- id: in_n_iteration
  doc: "Maximum number of batches to train for (default:\n50000)"
  type: long?
  inputBinding:
    prefix: --niteration
- id: in_no_overwrite
  doc: "Overwrite output directory (Default: --no-overwrite)\n(default: False)"
  type: Directory?
  inputBinding:
    prefix: --no-overwrite
- id: in_re_weight
  doc: "Select chunk according to weights in 'group' (default:\nweights)"
  type: string?
  inputBinding:
    prefix: --reweight
- id: in_save_every
  doc: 'Save model every x batches (default: 5000)'
  type: long?
  inputBinding:
    prefix: --save_every
- id: in_sd
  doc: 'Standard deviation to initialise with (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --sd
- id: in_seed
  doc: 'Set random number seed (default: None)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_smooth
  doc: "Smoothing factor for reporting progress (default:\n0.45)"
  type: double?
  inputBinding:
    prefix: --smooth
- id: in_no_transducer
  doc: "Train a transducer based model (Default: --transducer)\n(default: True)"
  type: boolean?
  inputBinding:
    prefix: --no-transducer
- id: in_drop
  doc: "Number of events to drop from start and end of chunk\nbefore evaluating loss\
    \ (default: 20)"
  type: long?
  inputBinding:
    prefix: --drop
- id: in_win_len
  doc: 'Length of window over data (default: 3)'
  type: long?
  inputBinding:
    prefix: --winlen
- id: in_model
  doc: File to read python model description from
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Prefix for output files
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: HDF5 file containing chunks
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_overwrite
  doc: "Overwrite output directory (Default: --no-overwrite)\n(default: False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_no_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- train_network.py
- events
