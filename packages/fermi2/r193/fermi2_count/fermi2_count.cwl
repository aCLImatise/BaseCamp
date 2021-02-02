class: CommandLineTool
id: fermi2_count.cwl
inputs:
- id: in_kmer_length
  doc: k-mer length [51]
  type: long
  inputBinding:
    prefix: -k
- id: in_min_occurence
  doc: min occurence [1]
  type: long
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_only_print_bifurcating
  doc: only print bifurcating k-mers (force -2)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_bidirectional_counting
  doc: bidirectional counting
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_in_dot_fmd
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
- fermi2
- count
