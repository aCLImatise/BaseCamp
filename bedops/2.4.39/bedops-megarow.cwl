#!/usr/bin/env cwl-runner

baseCommand:
- bedops-megarow
class: CommandLineTool
cwlVersion: v1.0
id: bedops-megarow
inputs:
- doc: Jump to and process data for given <chromosome> only.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: string
- doc: Error check input files (slower).
  id: ec
  inputBinding:
    prefix: --ec
  type: boolean
- doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: <operation>   Detailed help on <operation>. An example is --help-c or --help-complement
  id: help
  inputBinding:
    prefix: --help-
  type: boolean
- doc: :R          Add 'L' bp to all start coordinates and 'R' bp to end coordinates.
    Either value may be + or - to grow or shrink regions.  With the -e/-n operations,
    the first (reference) file is not padded, unlike all other files.
  id: range
  inputBinding:
    prefix: --range
  type: string
- doc: 'Pad or shrink input file(s) coordinates symmetrically by S. This is shorthand
    for: --range -S:S.'
  id: range
  inputBinding:
    prefix: --range
  type: string
