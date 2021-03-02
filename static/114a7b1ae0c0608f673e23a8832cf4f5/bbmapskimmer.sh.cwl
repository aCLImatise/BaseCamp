class: CommandLineTool
id: bbmapskimmer.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage,\noverriding autodetection.\n-Xmx20g will\
    \ specify 20 gigs of RAM, and -Xmx800m\nwill specify 800 megs.  The max is typically\
    \ 85% of\nphysical memory.  The human genome requires around 24g,\nor 12g with\
    \ the 'usemodulo' flag.  The index uses\nroughly 6 bytes per reference base."
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
- id: in_best
  doc: (use the first best site)
  type: string
  inputBinding:
    position: 0
- id: in_toss
  doc: (consider unmapped)
  type: string
  inputBinding:
    position: 1
- id: in_random
  doc: (select one top-scoring site randomly)
  type: string
  inputBinding:
    position: 2
- id: in_all
  doc: (retain all top-scoring sites)
  type: string
  inputBinding:
    position: 3
- id: in_orientation_dot
  doc: Set to false for long-mate-pair libraries.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bbmapskimmer.sh
