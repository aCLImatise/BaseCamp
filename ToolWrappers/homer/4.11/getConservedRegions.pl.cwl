class: CommandLineTool
id: getConservedRegions.pl.cwl
inputs:
- id: in_size
  doc: "<#|given> (size of region centered on peaks to look for conserved islands)\n\
    default: given"
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_bufsize
  doc: "<#> (size of area around conserved islands to include)\ndefault: 25"
  type: boolean?
  inputBinding:
    prefix: -bufSize
- id: in_out_size
  doc: "<#> (size of conserved island segments to output [larger islands will be split])\n\
    default: 100"
  type: boolean?
  inputBinding:
    prefix: -outSize
- id: in_cons
  doc: "(phastCons score needed to define conservation island, 0=all used)\ndefault:\
    \ 0.8"
  type: long?
  inputBinding:
    prefix: -cons
- id: in_peak_regions_exclude
  doc: '[peakfile2]... (peak regions to exclude)'
  type: File?
  inputBinding:
    prefix: -p
- id: in_keep_exons
  doc: (By default, exons are excluded)
  type: boolean?
  inputBinding:
    prefix: -keepExons
- id: in_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_additional
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_options_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getConservedRegions.pl
