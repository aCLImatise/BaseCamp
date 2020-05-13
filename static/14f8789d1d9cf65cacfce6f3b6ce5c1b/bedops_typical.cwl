class: CommandLineTool
id: bedops_typical.cwl
inputs:
- id: chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string
  inputBinding:
    prefix: --chrom
- id: ec
  doc: Error check input files (slower).
  type: boolean
  inputBinding:
    prefix: --ec
- id: header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean
  inputBinding:
    prefix: --header
- id: help
  doc: <operation>   Detailed help on <operation>. An example is --help-c or --help-complement
  type: boolean
  inputBinding:
    prefix: --help-
- id: range
  doc: :R          Add 'L' bp to all start coordinates and 'R' bp to end coordinates.
    Either value may be + or - to grow or shrink regions.  With the -e/-n operations,
    the first (reference) file is not padded, unlike all other files.
  type: string
  inputBinding:
    prefix: --range
- id: range
  doc: 'Pad or shrink input file(s) coordinates symmetrically by S. This is shorthand
    for: --range -S:S.'
  type: string
  inputBinding:
    prefix: --range
outputs: []
cwlVersion: v1.1
baseCommand:
- bedops-typical
