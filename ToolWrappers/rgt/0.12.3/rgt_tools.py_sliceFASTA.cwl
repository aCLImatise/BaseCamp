class: CommandLineTool
id: rgt_tools.py_sliceFASTA.cwl
inputs:
- id: in_input_fasta_file
  doc: Input FASTA file
  type: File
  inputBinding:
    prefix: -i
- id: in_length_slice_sequence
  doc: Length of the slice sequence
  type: long
  inputBinding:
    prefix: -l
- id: in_output_fasta_file
  doc: Output FASTA file
  type: File
  inputBinding:
    prefix: -o
- id: in_the_start_position
  doc: The start position
  type: string
  inputBinding:
    prefix: -p
- id: in_reverse
  doc: Reverse the sequence
  type: boolean
  inputBinding:
    prefix: --reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: Output FASTA file
  type: File
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- sliceFASTA
