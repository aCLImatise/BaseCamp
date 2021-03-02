class: CommandLineTool
id: bbduk.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\n\
    specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically\
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
- id: in_km_ers_dot
  doc: 1 means use all, 2 means use every other kmer, etc.
  type: string
  inputBinding:
    position: 0
- id: in_discarded_dot
  doc: Pairs will be discarded if both are shorter.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bbmap:38.90--h1296035_0
cwlVersion: v1.1
baseCommand:
- bbduk.sh
