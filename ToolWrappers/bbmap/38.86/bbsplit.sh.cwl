class: CommandLineTool
id: bbsplit.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\
    \ specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically\
    \ 85% of physical memory."
  type: boolean?
  inputBinding:
    prefix: -Xmx
- id: in_e_oom
  doc: "This flag will cause the process to exit if an\nout-of-memory exception occurs.\
    \  Requires Java 8u92+."
  type: boolean?
  inputBinding:
    prefix: -eoom
- id: in_da
  doc: Disable assertions.
  type: boolean?
  inputBinding:
    prefix: -da
- id: in_var_3
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: in_random
  doc: (select one top-scoring site randomly)
  type: string
  inputBinding:
    position: 2
- id: in_retain_topscoring_sites
  doc: (retain all top-scoring sites.  Does not work yet with SAM output)
  type: string
  inputBinding:
    position: 3
- id: in_var_7
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: in_var_8
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: in_write_copy_output
  doc: (write a copy to the output for each reference to which it maps)
  type: string
  inputBinding:
    position: 2
- id: in_split
  doc: (write a copy to the AMBIGUOUS_ output for each reference to which it maps)
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bbsplit.sh
