class: CommandLineTool
id: split_sequence_data.py.cwl
inputs:
- id: in_input_fast_a_fn
  doc: The sequence data file to be split up.
  type: File?
  inputBinding:
    prefix: --input_fasta_fn
- id: in_num_output_files
  doc: "The number of files the input data should be split\ninto."
  type: long?
  inputBinding:
    prefix: --num_output_files
- id: in_output_dir
  doc: The location to write the split data files.
  type: string?
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- split_sequence_data.py
