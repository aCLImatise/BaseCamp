class: CommandLineTool
id: prepare_signature.pl.cwl
inputs:
- id: in_fasta_file_influence
  doc: "Fasta file with the sequences of known mature miRNAs for the species.\nThese\
    \ sequences will not influence the miRDeep scoring, but will\nsubsequently make\
    \ it easy to estimate sensitivity of the run."
  type: File?
  inputBinding:
    prefix: -a
- id: in_output_progress_screen
  doc: Output progress to screen
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prepare_signature.pl
