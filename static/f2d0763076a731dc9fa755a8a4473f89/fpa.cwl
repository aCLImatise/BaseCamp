class: CommandLineTool
id: ../../../fpa.cwl
inputs:
- id: compression_out
  doc: 'Output compression format, the input compression format is chosen by default
    [possible values: gzip, bzip2, lzma, no]'
  type: string
  inputBinding:
    prefix: --compression-out
- id: format
  doc: 'Force the format used [possible values: paf, m4]'
  type: string
  inputBinding:
    prefix: --format
- id: input
  doc: "Path to input file, use '-' for stdin [default: -]"
  type: string
  inputBinding:
    prefix: --input
- id: internal_threshold
  doc: 'A match is internal match if overhang length > match length * internal threshold
    this option set internal match [default: 0.8]'
  type: long
  inputBinding:
    prefix: --internal-threshold
- id: output
  doc: "Path to output file, use '-' for stdout [default: -]"
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fpa
