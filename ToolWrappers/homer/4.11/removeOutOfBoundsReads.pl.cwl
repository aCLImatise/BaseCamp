class: CommandLineTool
id: removeOutOfBoundsReads.pl.cwl
inputs:
- id: in_chrom_sizes
  doc: '(specify the chromosome sizes, default: automatic)'
  type: long?
  inputBinding:
    prefix: -chromSizes
- id: in_force
  doc: (force calculation of chromsome sizes for genome FASTA files)
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- removeOutOfBoundsReads.pl
