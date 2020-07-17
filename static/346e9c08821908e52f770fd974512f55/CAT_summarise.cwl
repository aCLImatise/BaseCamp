class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CAT_summarise.cwl
inputs:
- id: _inputfile_path
  doc: ', --input_file     Path to named CAT contig classification file or BAT bin
    classification file. Currently only official ranks are supported, and only classification
    files containing a single classification per contig / bin.'
  type: boolean
  inputBinding:
    prefix: -i
- id: _outputfile_path
  doc: ', --output_file    Path to output file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: _contigsfasta_path
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
