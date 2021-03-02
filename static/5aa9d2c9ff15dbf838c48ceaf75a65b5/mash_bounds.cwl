class: CommandLineTool
id: mash_bounds.cwl
inputs:
- id: in_kmer_size_
  doc: k-mer size. (1-32) [21]
  type: long?
  inputBinding:
    prefix: -k
- id: in_mash_distance_estimates
  doc: "Mash distance estimates will be within the given error bounds with\nthis probability.\
    \ (0-1) [0.99]\n"
  type: long?
  inputBinding:
    prefix: -p
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mash
- bounds
