class: CommandLineTool
id: fastq_to_fasta.py.cwl
inputs:
- id: input_sequence
  doc: The name of the input FASTQ sequence file.
  type: string
  inputBinding:
    position: 0
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: output
  doc: "The name of the output FASTA sequence file. (default: <_io.TextIOWrapper name='<stdout>'\
    \ mode='w' encoding='UTF-8'>)"
  type: File
  inputBinding:
    prefix: --output
- id: n_keep
  doc: "Option to keep reads containing 'N's in input_sequence file. Default is to\
    \ drop reads (default: False)"
  type: boolean
  inputBinding:
    prefix: --n_keep
- id: gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-to-fasta.py
