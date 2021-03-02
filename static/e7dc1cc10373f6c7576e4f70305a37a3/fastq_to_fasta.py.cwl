class: CommandLineTool
id: fastq_to_fasta.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_output
  doc: "The name of the output FASTA sequence file. (default:\n<_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_n_keep
  doc: "Option to keep reads containing 'N's in input_sequence\nfile. Default is to\
    \ drop reads (default: False)"
  type: boolean?
  inputBinding:
    prefix: --n_keep
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The name of the output FASTA sequence file. (default:\n<_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-to-fasta.py
