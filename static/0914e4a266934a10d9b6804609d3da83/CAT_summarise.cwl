class: CommandLineTool
id: CAT_summarise.cwl
inputs:
- id: i
  doc: ', --input_file     Path to named CAT contig classification file or BAT bin
    classification file. Currently only official ranks are supported, and only classification
    files containing a single classification per contig / bin.'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ', --output_file    Path to output file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: ', --contigs_fasta  Path to contigs fasta file. This is required if you want
    to summarise a contig classification file.'
  type: boolean
  inputBinding:
    prefix: -c
- id: force
  doc: Force overwrite existing files.
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: Suppress verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- CAT
- summarise
