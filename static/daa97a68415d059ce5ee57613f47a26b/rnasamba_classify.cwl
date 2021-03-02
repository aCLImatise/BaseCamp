class: CommandLineTool
id: rnasamba_classify.cwl
inputs:
- id: in_protein_fast_a
  doc: "output FASTA file containing translated sequences for\nthe predicted coding\
    \ ORFs. (default: None)"
  type: File?
  inputBinding:
    prefix: --protein_fasta
- id: in_verbose
  doc: "print the progress of the classification. 0 = silent,\n1 = current step. (default:\
    \ 0)\n"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_output_file
  doc: output TSV file containing the results of the
  type: string
  inputBinding:
    position: 0
- id: in_classification_dot
  doc: fasta_file            input FASTA file containing transcript sequences.
  type: string
  inputBinding:
    position: 1
- id: in_weights
  doc: "input HDF5 file(s) containing weights of a trained\nRNAsamba network (if more\
    \ than a file is provided, an\nensembling of the models will be performed)."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_protein_fast_a
  doc: "output FASTA file containing translated sequences for\nthe predicted coding\
    \ ORFs. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_protein_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- rnasamba
- classify
