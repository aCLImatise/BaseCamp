class: CommandLineTool
id: clumpify.sh.cwl
inputs:
- id: in_x_mx
  doc: "This will set Java's memory usage, overriding autodetection.\n-Xmx20g will\
    \ specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.\nThe max is typically\
    \ 85% of physical memory."
  type: boolean
  inputBinding:
    prefix: -Xmx
- id: in_e_oom
  doc: "This flag will cause the process to exit if an\nout-of-memory exception occurs.\
    \  Requires Java 8u92+."
  type: boolean
  inputBinding:
    prefix: -eoom
- id: in_da
  doc: Disable assertions.
  type: boolean
  inputBinding:
    prefix: -da
- id: in_compression_dot
  doc: Should be disabled for paired reads.
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot
  doc: Yields the highest compression.
  type: string
  inputBinding:
    position: 0
- id: in_non_duplicate_dot
  doc: Improves detection of inexact duplicates.
  type: string
  inputBinding:
    position: 0
- id: in_next_seq
  doc: 40  (and spany=t)
  type: string
  inputBinding:
    position: 0
- id: in_y_axis_dot
  doc: 'Should only be enabled when looking for '
  type: string
  inputBinding:
    position: 0
- id: in_correlations_dot
  doc: Increasing this number can reduce false-
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clumpify.sh
