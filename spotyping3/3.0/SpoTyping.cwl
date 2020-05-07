class: CommandLineTool
id: SpoTyping.py.cwl
inputs:
- id: seq
  doc: Set this if input is a fasta file that contains only a complete genomic sequence
    or assembled contigs from an isolate [Default is off]
  type: boolean
  inputBinding:
    prefix: --seq
- id: swift
  doc: 'swift mode, either "on" or "off" [Defulat: on]'
  type: string
  inputBinding:
    prefix: --swift
- id: min
  doc: 'minimum number of error-free hits to support presence of a spacer [Default:
    0.1*average read depth]'
  type: long
  inputBinding:
    prefix: --min
- id: rm_in
  doc: 'minimum number of 1-error-tolerant hits to support presence of a spacer [Default:
    0.12 * average read depth]'
  type: long
  inputBinding:
    prefix: --rmin
- id: outdir
  doc: 'output directory [Default: running directory]'
  type: string
  inputBinding:
    prefix: --outdir
- id: output
  doc: 'basename of output files generated [Default: SpoTyping]'
  type: string
  inputBinding:
    prefix: --output
- id: no_query
  doc: suppress the SITVIT database query [Default is off]
  type: boolean
  inputBinding:
    prefix: --noQuery
- id: filter
  doc: stringent filtering of reads (used only for low quality reads)[Default is off]
  type: boolean
  inputBinding:
    prefix: --filter
- id: sorted
  doc: set this only when the reads are sorted to a reference genome [Default is off]
  type: boolean
  inputBinding:
    prefix: --sorted
- id: debug
  doc: enable debug mode, keeping all intermediate files for checking [Default is
    off]
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- SpoTyping.py
