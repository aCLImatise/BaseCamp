class: CommandLineTool
id: taxmapper_map.cwl
inputs:
- id: in_maximum_read_length
  doc: Maximum read length
  type: long?
  inputBinding:
    prefix: -m
- id: in_forward
  doc: Forward read aln file
  type: File?
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Reverse read aln file [optional]
  type: File?
  inputBinding:
    prefix: --reverse
- id: in_out
  doc: 'Output file [default: taxa.tsv]'
  type: File?
  inputBinding:
    prefix: --out
- id: in_combine
  doc: "How to combine forward and reverse hits, for\n\"concordant\" forward and reverse\
    \ have to map to the\nsame taxon, for \"best\" the best hit from forward and\n\
    reverse is returned [default: best]"
  type: string?
  inputBinding:
    prefix: --combine
- id: in_threads
  doc: "Number of threads, used to map forward and reverse\nreads in parallel [default:\
    \ 2]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output file [default: taxa.tsv]'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- map
