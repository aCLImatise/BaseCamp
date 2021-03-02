class: CommandLineTool
id: sequence_sample.cwl
inputs:
- id: in_paired
  doc: "treat inputs as paired sequences; the first two files form the\nfirst pair,\
    \ and so on."
  type: boolean?
  inputBinding:
    prefix: -paired
- id: in_output
  doc: write output sequences to file O.  If paired, two files must be supplied.
  type: File?
  inputBinding:
    prefix: -output
- id: in_coverage
  doc: output C coverage of sequences, based on genome size G.
  type: long?
  inputBinding:
    prefix: -coverage
- id: in_genome_size
  doc: output B bases.
  type: string?
  inputBinding:
    prefix: -genomesize
- id: in_reads
  doc: output R reads.
  type: string?
  inputBinding:
    prefix: -reads
- id: in_pairs
  doc: output P pairs (only if -paired).
  type: string?
  inputBinding:
    prefix: -pairs
- id: in_fraction
  doc: output fraction F of the input bases.
  type: string?
  inputBinding:
    prefix: -fraction
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mode
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sequence_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output sequences to file O.  If paired, two files must be supplied.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sequence
- sample
