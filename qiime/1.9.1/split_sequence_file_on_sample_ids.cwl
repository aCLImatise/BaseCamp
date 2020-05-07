class: CommandLineTool
id: split_sequence_file_on_sample_ids.py.cwl
inputs:
- id: input_seqs_fp
  doc: the input fasta file to split [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_seqs_fp
- id: output_dir
  doc: 'the output directory [default: none] [REQUIRED]'
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- split_sequence_file_on_sample_ids.py
