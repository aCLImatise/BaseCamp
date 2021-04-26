class: CommandLineTool
id: rnasamba_train.cwl
inputs:
- id: in_early_stopping
  doc: "number of epochs after lowest validation loss before\nstopping training (a\
    \ fraction of 0.1 of the training\nset is set apart for validation and the model\
    \ with the\nlowest validation loss will be saved). (default: 0)"
  type: long?
  inputBinding:
    prefix: --early_stopping
- id: in_batch_size
  doc: 'number of samples per gradient update. (default: 128)'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_epochs
  doc: 'number of epochs to train the model. (default: 40)'
  type: long?
  inputBinding:
    prefix: --epochs
- id: in_verbose
  doc: "print the progress of the training. 0 = silent, 1 =\ncurrent step, 2 = progress\
    \ bar, 3 = one line per\nepoch. (default: 0)\n"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_output_file
  doc: "output HDF5 file containing weights of the newly\ntrained RNAsamba network."
  type: string
  inputBinding:
    position: 0
- id: in_coding_file
  doc: "input FASTA file containing sequences of protein-\ncoding transcripts."
  type: string
  inputBinding:
    position: 1
- id: in_noncoding_file
  doc: input FASTA file containing sequences of noncoding
  type: string
  inputBinding:
    position: 2
- id: in_transcripts_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rnasamba:0.2.5--py36hc5360cc_0
cwlVersion: v1.1
baseCommand:
- rnasamba
- train
