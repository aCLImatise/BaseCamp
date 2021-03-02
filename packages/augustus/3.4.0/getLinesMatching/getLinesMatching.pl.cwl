class: CommandLineTool
id: getLinesMatching.pl.cwl
inputs:
- id: in_use_complement_print
  doc: Use complement. Print all lines NOT matching.
  type: boolean?
  inputBinding:
    prefix: --v
- id: in_pat_from
  doc: "query replace regular expression to the\nentry in the n-th column first before\n\
    checking for membership in the list.\nWill use the pattern s/$patfrom/$patto/\n\
    Useful for removing modifications, e.g.\ntripping a trailing -1 before performing\
    \ the\ncheck.\nBoth default to empty patterns."
  type: long?
  inputBinding:
    prefix: --patfrom
- id: in_whitespace
  doc: Split columns at whitespace rather than tab.
  type: boolean?
  inputBinding:
    prefix: --whitespace
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- getLinesMatching.pl
