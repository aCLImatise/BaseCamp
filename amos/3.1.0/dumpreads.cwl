class: CommandLineTool
id: dumpreads.cwl
inputs:
- id: dump_reads
  doc: '[options] <bank path>'
  type: string
  inputBinding:
    position: 0
- id: f
  doc: Dump reads in fastq format
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: 'Use this as the min base quality (default: 33 / Sanger FASTQ)'
  type: long
  inputBinding:
    prefix: -Q
- id: q
  doc: Dump qualities in fasta format instead of sequence
  type: boolean
  inputBinding:
    prefix: -q
- id: e
  doc: Use EIDs for FastA header instead of IIDs
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: Ignore clear range and dump entire sequence
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: Display clear range information on FASTA header for TIGR Assembler
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: Dump just the eids listed in file
  type: File
  inputBinding:
    prefix: -E
- id: i
  doc: Dump just the iids listed in file
  type: File
  inputBinding:
    prefix: -I
- id: l
  doc: 'Set the maximum number of bases per line (Default: 70)'
  type: string
  inputBinding:
    prefix: -L
- id: m
  doc: Minimum IID to display (not included) (Default all; not compatible with -e,-E,-I
    options)
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: Maximum IID to display (included) (Default all; not compatible with -e,-E,-I
    options)
  type: string
  inputBinding:
    prefix: -M
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpreads
