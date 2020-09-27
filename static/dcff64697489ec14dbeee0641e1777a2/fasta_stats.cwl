class: CommandLineTool
id: fasta_stats.cwl
inputs:
- id: in_size_big_scaffold
  doc: '##   size of big scaffold cutoff in kb [50]'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_minimum_for_gaps
  doc: '##   minimum size bin to display for gaps [none]'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_minimum_size_bin
  doc: '##   minimum size bin to display [1000]'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_exact_length_signal
  doc: "##   exact length of N's to signal scaffold end [-1]"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_minimum_length_signal
  doc: "##   minimum length of N's to signal contig end [9]"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_stats
