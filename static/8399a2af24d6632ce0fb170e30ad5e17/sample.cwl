class: CommandLineTool
id: sample.cwl
inputs:
- id: in_format
  doc: "The format ('fasta' or 'fastq' or 'lines') of the\nsequences (default=fastq)"
  type: string?
  inputBinding:
    prefix: --format
- id: in_sequences
  doc: The number of sequences to be sampled (default=1)
  type: long?
  inputBinding:
    prefix: --sequences
- id: in_random_seed
  doc: "The seed for sequence of pseudo-random integers to\nbe used in sampling"
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_option_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sample
