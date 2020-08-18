class: CommandLineTool
id: ../../../rnasamba_classify.cwl
inputs:
- id: protein_fast_a
  doc: 'output FASTA file containing translated sequences for the predicted coding
    ORFs. (default: None)'
  type: string
  inputBinding:
    prefix: --protein_fasta
- id: verbose
  doc: 'print the progress of the classification. 0 = silent, 1 = current step. (default:
    0)'
  type: string
  inputBinding:
    prefix: --verbose
- id: output_file
  doc: output TSV file containing the results of the classification.
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: input FASTA file containing transcript sequences.
  type: string
  inputBinding:
    position: 1
- id: weights
  doc: input HDF5 file(s) containing weights of a trained RNAsamba network (if more
    than a file is provided, an ensembling of the models will be performed).
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rnasamba
- classify
