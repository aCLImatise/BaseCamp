class: CommandLineTool
id: rnasamba_train.cwl
inputs:
- id: output_file
  doc: output HDF5 file containing weights of the newly trained RNAsamba network.
  type: string
  inputBinding:
    position: 0
- id: coding_file
  doc: input FASTA file containing sequences of protein- coding transcripts.
  type: string
  inputBinding:
    position: 1
- id: noncoding_file
  doc: input FASTA file containing sequences of noncoding transcripts.
  type: string
  inputBinding:
    position: 2
- id: early_stopping
  doc: 'number of epochs after lowest validation loss before stopping training (a
    fraction of 0.1 of the training set is set apart for validation and the model
    with the lowest validation loss will be saved). (default: 0)'
  type: string
  inputBinding:
    prefix: --early_stopping
- id: batch_size
  doc: 'number of samples per gradient update. (default: 128)'
  type: string
  inputBinding:
    prefix: --batch_size
- id: epochs
  doc: 'number of epochs to train the model. (default: 40)'
  type: string
  inputBinding:
    prefix: --epochs
- id: v
  doc: '{0,1,2,3}, --verbose {0,1,2,3} print the progress of the training. 0 = silent,
    1 = current step, 2 = progress bar, 3 = one line per epoch. (default: 0)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- rnasamba
- train
